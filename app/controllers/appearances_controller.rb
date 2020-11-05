class AppearancesController < ApplicationController
  def new
    @appearance= Appearance.new
  end

  def create
    @new_appearance= Appearance.new(appearance_params)
    redirect_to 
  end







  private

  def appearance_params
  params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end

