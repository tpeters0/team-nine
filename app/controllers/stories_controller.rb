class StoriesController < ApplicationController

  before_action :existing_user, only: [:create, :new, :destroy, :edit, :update]

  def index
    @stories = Story.all
    @categories = Category.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
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

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    redirect_to(@story)
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to root_path
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
