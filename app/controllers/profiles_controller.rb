class ProfilesController < ApplicationController
 

 def profile_params
  params.require(:profile).permit(:name, :city, :price, :image)
 end

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.new(params[:id])
     if profile.save
       redirect_to profile_path

     else
      render 'new'
    end
  end


end
