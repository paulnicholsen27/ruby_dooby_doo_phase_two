class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests = @episode.guests
    # @guests = Guest.all.pluck(:name)
    # @guests = Guest.all.find(params[:id])
    # @appearances = Appearance.guest.find(params[:id])
  end
end
