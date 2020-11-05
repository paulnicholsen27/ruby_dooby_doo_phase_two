class AppearancesController < ApplicationController

  def show
    @appearance = Appearance.find(params[:id])
    @episode = Episode.find(@appearance.episode_id)
    @guest = Guest.find(@appearance.guest_id)
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to appearance_path(@appearance)
    else
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
