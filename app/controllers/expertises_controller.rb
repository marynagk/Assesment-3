class ExpertisesController < ApplicationController
  before_action :authorize
  before_action :set_expertises
  before_action :set_expertise, only: [:show, :edit, :update, :destroy]

  # GET users/1/expertises
  def index
    @expertises = @user.expertises
  end

  # GET users/1/expertises/1
  def show
    @event = Event.where('eventable_type = ? AND eventable_id = ?', "Expertise", @expertise.id).last
    @event = @event || @expertise
    @users = User.all.where('id !=?', @current_user.id)
  end


  # GET users/1/expertises/new
  def new
    @expertise = @user.expertises.build
    @expertise.image = params[:file]
  end

  # GET users/1/expertises/1/edit
  def edit
  end

  # POST users/1/expertises
  def create
    @expertise = @user.expertises.build(expertise_params)

    if @expertise.save
      if publishing?
        @expertise.events.build(description: "published new expertise").save!
        @expertise.update(status: "1")
        redirect_to([@expertise.user, @expertise], notice: 'Experitise was successfully published.')
      else
        redirect_to([@expertise.user, @expertise], notice: 'Experise was successfully created.')
      end
    else
      render action: 'new'
    end
  end

  # PUT users/1/expertises/1
  def update
    if params[:expertise][:remove_image]=="1"
      @expertise.remove_image!
    end
    if @expertise.update_attributes(expertise_params)
      if publishing?
        @expertise.events.build(description: "published new experise").save!
        @expertise.update(status: "1")
        redirect_to([@expertise.user, @expertise], notice: 'Experitise was successfully published.')
      else
        redirect_to([@expertise.user, @expertise], notice: 'Experise was successfully updated.')
      end
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/expertises/1
  def destroy
    events = Event.where('eventable_id = ? AND eventable_type = ?', @expertise.id, "Expertise")
    events.each do |event|
      event.destroy
    end
    @expertise.destroy

    redirect_to user_url(@user)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expertises
      @user = User.find(params[:user_id])
    end

    def set_expertise
      @expertise = @user.expertises.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expertise_params
      params.require(:expertise).permit(:tags, :image, :description, :category_id, :status)
    end

    def publishing?
      params[:commit] == "Publish"
    end

end
