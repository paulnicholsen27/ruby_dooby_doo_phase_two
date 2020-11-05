class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @ratings = Appearance.where(:episode_id => @episode.id).map { |appearance| appearance.rating }
    @average = (@ratings.reduce(:+).to_f / @ratings.count).round(2)
    if @average.nan?
      @average = "This show has not been rated yet."
    end
  end
end
