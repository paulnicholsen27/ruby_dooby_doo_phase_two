class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to new_appearance_path
  end

  def new
    @appearance = Appearance.new
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

 def show
    @appearance = Appearance.find(params[:id])
  end
  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to appearance_path(@appearance)
  end 

  private
    def appearance_params
      params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end
