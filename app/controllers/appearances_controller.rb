class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end
  end

  private
  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
