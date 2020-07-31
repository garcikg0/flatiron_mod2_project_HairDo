class StylistsController < ApplicationController
    include StylistsHelper
    before_action :set_current_stylist, only: [:show]

    def home

    end

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

    def edit
      @stylist = Stylist.find(params[:id])
    end

    def update
      stylist = Stylist.find(params[:id])
      stylist.update(stylist_params)
      redirect_to stylist
    end

    private

    def stylist_params
        params.require(:stylist).permit(:name, :bio, :age, :years_of_experience, :licenses, :city_id, :neighborhood_id)
    end
    
    # def set_current_stylist
    #     # current_stylist = []
    #     @current_stylist = Stylist.find(params[:id])
    #     current_stylist << @current_stylist
    # end

end
