class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    #@appearance = @guest.appearances.order(:rating)
  end

end
