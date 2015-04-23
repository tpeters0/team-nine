class CategoriesController < ApplicationController

  def create
  @category = Category.find(params[:category_id])
  @story = @category.stories.create(story_params)
  redirect_to category_path(@category)
end

private
  def story_params
    params.require(:story).permit(:heading, :body, :profile_id)
  end
end
