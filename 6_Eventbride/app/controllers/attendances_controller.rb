class AttendancesController < ApplicationController

  def index
 
  end
  def new
    @event = Event.find(params[:id])
  end

  def create
    @attendance = Attendance.new(guest_id: params[:guest_id], event_id: params[:event_id], stripe_customer_id: params[:customer_id])
     if @attendance.save
       flash[:success] = "You are now attending this event !"
       redirect_to root_path
     else
       flash[:error] = "You failed"
       redirect_to root_path
     end
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email, :encrypted_password, :description, :first_name, :last_name)
  end

  def event_params
    params.require(:events).permit(:title, :location, :duration, :description, :price, :start_date, :admin_id)
  end

  def attendance_params
    params.require(:attendances).permit(:user_id)
  end


end