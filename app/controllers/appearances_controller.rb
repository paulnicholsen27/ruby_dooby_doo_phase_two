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
       redirect_to 
          #@episode = Episode.find(params[:id])
    #redirect_to episode_path(@episode.id)
    else
      render :new
    end
  end
  ## ^^ can't figure out how to redirect the submitted form to 
  # the selected episodes show page
## also after I included validations for the rating,
# My error message prints, but I'm getting 
#error messages that additionally print that
# episode and guest must exit to create a new appearance.
#unsure why that is happening because I didn't create validations 
# for guest or episode needing to exist//also I'm inputting them as it is!

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :numeric_rating)
  end
end
