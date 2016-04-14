class ProfileController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def index
    @profile = Profile.all
  end
end
