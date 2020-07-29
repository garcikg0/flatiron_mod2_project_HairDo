class StylistsController < ApplicationController

    def index
        @stylists = Stylist.all
    end

    def show
    
        @stylist = Stylist.find(params[:id])
    end

    def new
        @stylist = Stylist.new
    end

    def create
        stylist = Stylist.create(stylist_params)
        redirect_to stylist
    end

    private

    def stylist_params
        params.require(:stylist).permit(:name, :bio, :age, :years_of_experience, :licenses, :city_id, :neighborhood_id)
    end
end
