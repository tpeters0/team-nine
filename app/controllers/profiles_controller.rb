class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = Profile.new(profile_params)
      if @profile.save
        redirect_to(profile_path(@profile))
      else
        render(:new)
      end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :age, :occupation, :image, :user_id)
  end

end
