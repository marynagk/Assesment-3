class GoalsController < ApplicationController
  before_action :authorize
  before_action :set_goals, except: [:search]
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET users/1/goals
  def index
    @goals = @user.goals
  end

  def search
    # byebug
    if params[:description]
      @goals = Goal.where('description LIKE ?', "%#{params[:description]}%")
    elsif params[:tags]
      @goals = Goal.where('tags LIKE ?', "%#{params[:tags]}%")
    else @goals = Goal.all
    end
  end

  # GET users/1/goals/1
  def show
    flash[:id]=params[:id]
  end


  # GET users/1/goals/new
  def new
    @goal = @user.goals.build
    @goal.image = params[:file]
  end

  # GET users/1/goals/1/edit
  def edit
  end

  # POST users/1/goals
  def create
    @goal = @user.goals.build(goal_params)

    if @goal.save
      redirect_to([@goal.user, @goal], notice: 'Goal was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/goals/1
  def update

    if params[:goal][:remove_image]=="1"
      @goal.remove_image!
    end
    if @goal.update_attributes(goal_params)
      redirect_to([@goal.user, @goal], notice: 'Goal was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/goals/1
  def destroy
    @goal.destroy

    redirect_to user_goals_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goals
      @user = User.find(params[:user_id])
    end

    def set_goal
      @goal = @user.goals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:tags, :image, :description, :category_id)
    end
end
