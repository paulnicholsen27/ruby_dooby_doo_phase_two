class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @ratings = (Appearance.where :guest_id == @guest.id)
    @episode_list = @guest.episodes.map do |episode|
      [episode.date, (@ratings.find_by(:episode_id => episode.id)).rating]
    end.sort_by { |e| e[1]}.reverse
  end
end
