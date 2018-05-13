class RecommendationsController < ApplicationController
  before_action :authorize
  before_action :set_recommendations
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]

  # GET goals/1/recommendations
  def index
    @recommendations = @goal.recommendations
  end

  # GET goals/1/recommendations/1
  def show
  end


  # GET goals/1/recommendations/new
  def new
    @recommendation = @goal.recommendations.build(:author_id => @current_user.id)
  end

  # GET goals/1/recommendations/1/edit
  def edit
  end

  # POST goals/1/recommendations
  def create
    @user = @goal.user
    @recommendation = @goal.recommendations.build(recommendation_params)
    @recommendation.author_id = @current_user.id


    if @recommendation.save
      redirect_to([@goal.user, @goal], notice: 'Recommendation was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT goals/1/recommendations/1
  def update
    if @recommendation.update_attributes(recommendation_params)
      redirect_to([@recommendation.goal, @recommendation], notice: 'Recommendation was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE goals/1/recommendations/1
  def destroy
    @recommendation.destroy

    redirect_to goal_recommendations_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendations
      @goal = Goal.find(params[:goal_id])
    end

    def set_recommendation
      @recommendation = @goal.recommendations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recommendation_params
      params.require(:recommendation).permit(:text)
    end
end
