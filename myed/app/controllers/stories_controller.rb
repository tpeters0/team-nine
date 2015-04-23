class StoriesController < ApplicationController

  def index
    @stories = Story.all
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @story = Story.find(params[:id])
  end

  def new
    @category_options = Category.all.map{|c| [ c.name, c.id ] }
    @category = Category.find(params[:category_id])
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

      if @story.save
        redirect_to(category_story_path(@story.category ,@story))
      else
        render(:new)
      end
  end

  private

  def story_params
    params.require(:story).permit(:category_id, :heading, :body)
  end

end
