class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private

  def ep_params
    params.require(:show).permit(:date, :number, :guest_ids => [])
  end

end
