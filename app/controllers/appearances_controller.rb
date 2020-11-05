class AppearancesController < ApplicationController


    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(app_params)
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode_id)
        else
            render :new
        end
    end

    private

    def app_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
