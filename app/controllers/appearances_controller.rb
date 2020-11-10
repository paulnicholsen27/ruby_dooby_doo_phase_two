class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    # @appearance = Appearance.create(guest_id: params[:id], episode_id: params[:id], rating: params[:id])
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
    redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end
  end


  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
