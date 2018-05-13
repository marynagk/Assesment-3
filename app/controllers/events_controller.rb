class EventsController < ApplicationController
  before_action :authorize
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.where('id !=?', @current_user.id)
    # @expertises = Expertise.joins("INNER JOIN events ON events.eventable_id = expertises.id AND events.eventable_type = 'Expertise'")
    # @goals = Goal.joins("INNER JOIN events ON events.eventable_id = goals.id AND events.eventable_type = 'Goal'")
    @events = Event.all.order(created_at: :desc)
     if params[:search] && params[:search] != ''  then
       @events = []
       (Expertise.where('description LIKE ? OR tags LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")|
       Goal.where('description LIKE ? OR tags LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")).each do |ev|
         @events << ev.events.last if ev.events.last
       end
          @events = @events.uniq
     end

    @tags = {}
    Category.all.each do |category|
      cat_tags = []

      (Goal.where('category_id = ? AND status = ?', category.id, 1)|
      Expertise.where('category_id = ? AND status = ?', category.id, 1)).each do |event|
        event.tags.split(',').each do |tag|
          cat_tags << tag.strip
        end
      end
      if cat_tags != []
        cat_tags = cat_tags.uniq
        @tags[category.name_for_goals] = cat_tags
      end
    end

  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @event = Event.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        # format.json { render :show, status: :created, location: @user }
      else
        # format.html { render :new }
      #   format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


end
