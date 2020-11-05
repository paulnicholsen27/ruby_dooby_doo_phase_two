class GuestsController < ApplicationController

  def index
    @guests = Guest.order_by_rating
  end

  def show
    @guest = Guest.find(params[:id])
    @appearances = @guest.appearances.order("rating desc")
  end
end
