class CategoriesController < ApplicationController

  def create
    @category = Category.find(params[:id])
    @story = @category.stories.create(story_params)
    redirect_to category_path(@category)
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

private
  def story_params
    params.require(:story).permit(:heading, :body, :profile_id)
  end
end
