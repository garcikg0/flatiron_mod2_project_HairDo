class AppointmentsController < ApplicationController
  include AppointmentsHelper
  before_action :find_current_stylist, only: [:new, :create]
  before_action :find_current_client

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
        @errors = flash[:errors]
    end

    # before_action :set_current_stylist
    def create
        appointment = Appointment.create(appt_params)
        # appointment = Appointment.new
        # @stylist.appointment.create(appt_params)
        if appointment.valid?
            # @appointment.save
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

    # def destroy
    #   @appointment = Appointment.find(params[:id])
    #   @appointment.destroy
    #   flash[:notice] = "Appointment was successfully deleted. "
    #   redirect_to client_path
    # end

    private

    def appt_params
        params.require(:appointment).permit(:appt, :status, :client_id, :stylist_id, :city_id, :neighborhood_id)
    end

    # def set_current_stylist
    #     @current_user = current_stylist
    # end

    # def get_stylist
    #     @stylist = Stylist.find(params[:stylist_id])
    # end
end
