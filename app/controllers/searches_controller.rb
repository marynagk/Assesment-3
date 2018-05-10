class SearchesController < ApplicationController
def index
  if params[:description]
    # @search = Search.new(Goal, params[:description])
    # @goals = @search.run.paginate(page: params[:page], per_page: 20).order('id')
    Goal.where('description LIKE ?', "%#{params[:description]}%")
  else @goals = Goal.all
  end
end
end
