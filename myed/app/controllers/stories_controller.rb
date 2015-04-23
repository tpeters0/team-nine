class StoriesController < ApplicationController

  before_action :existing_user, only: [:create, :new, :destroy]

  def index
    @stories = Story.all
    @categories = Category.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    # @category_options = Category.all.map{|c| [ c.name, c.id ] }
    @story = Story.new
    # @category = Category.find(params[:category_id])
  end

  def create
    binding.pry
    @story = Story.new(story_params)
      if @story.save
        redirect_to(story_path(@story))
      else
        render(:new)
      end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def destroy
    @story = current_user.stories.find(params[:id])
    @story.destroy
    redirect_to 'welcome#index'
  end

  private

  def story_params
    params.require(:story).permit(:category, :heading, :body, :lesson, :photo_url, :profile_id, :category_id)
  end

  def existing_user
    if current_user && (Profile.find_by(user_id: current_user.id) != nil)
    elsif current_user && (Profile.find_by(user_id: current_user.id) == nil)
      redirect_to(new_profile_path)
    else
      redirect_to(new_user_registration_path)
    end
  end

end
