class AppearancesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
      if @appearance.valid?
          @appearance.save
          redirect_to episode_path(@appearance.episode.id)
        else
          render :new
        end
      end 
    

  def edit
  end

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end 


end
