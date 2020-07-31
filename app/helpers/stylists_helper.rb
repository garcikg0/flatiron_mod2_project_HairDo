module StylistsHelper
    def set_current_stylist
        current_stylist.clear
        @current_stylist = Stylist.find(params[:id])
        current_stylist << @current_stylist
    end
end
