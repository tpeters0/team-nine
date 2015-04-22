class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @category = Category.all
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
      if @story.save
        redirect_to(story_path(@story))
      else
        render(:new)
      end
  end

  private

  def story_params
    params.require(:story).permit(:category, :heading, :body)
  end

end
