class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
        @stylist = Stylist.find(params[:stylist_id])
        @errors = flash[:errors]
    end

    def create
        appointment = Appointment.create(appt_params)
        appointment.stylist = Stylist.find(params[:stylist_id])
        if appointment.valid?
            flash[:notice] = "Thank you for scheduling your appointment!"
            redirect_to appointment
        else
            flash[:errors] = appointment.errors.full_messages
            redirect_to new_appointment_path
        end
    end

    def edit
        @appointment = Appointment.find(params[:id])
        @errors = flash[:errors]
    end

    def update
        appointment = Appointment.find(params[:id])
        if appointment.update(appt_params)
            flash[:notice] = "Your appointment change was successfully updated!"
            redirect_to appointment_path(appointment)
        else
            flash[:errors] = appointment.errors.full_messages
            redirect_to edit_appointment_path
        end
    end

    private

    def appt_params
        params.require(:appointment).permit(:appt, :status, :client_id, :stylist_id, :city_id, :neighborhood_id)
    end
end
