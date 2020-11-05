class AppearancesController < ApplicationController
  def new
    @appearances = Appearance.new
  end

  def create
    @appearances = Appearance.new(appearances_params)

    if @appearances.save
      redirect_to episode_path(@appearances.episode_id)
    else
      return :new
    end
  end

  private
  def appearances_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
