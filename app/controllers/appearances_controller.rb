class AppearancesController < ApplicationController
  
  def index
    @appearances = Appearance.all 
  end
  
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
       @appearance.save
       redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end
    
  end

  private
  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
