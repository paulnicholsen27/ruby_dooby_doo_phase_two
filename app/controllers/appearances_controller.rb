class AppearancesController < ApplicationController
  def new
    @guest_id = Guest.all.ids
    @episode_id = Episode.all.ids
    @ratings = [1, 2, 3, 4, 5]
    @new_app = Appearance.new(guest_id: @guest_id, episode_id: @episode_id, rating: @ratings)
  end

  def create
    # @appearance = Appearance.create(guest_id: params[:id], episode_id: params[:id], rating: params[:id])
    @appearance = Appearance.new(guest_id: params[:id], episode_id: params[:id], rating: params[:id])
    if @appearance.valid?
      @appearance.save
    redirect_to episode_path(@appearance.id)
    else
      render :new
    end
    # (@appearance.episode)
  end


  # def appearance_params
  #   params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  # end
end
