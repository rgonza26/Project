class BookingsController < ApplicationController
  def index
  	@bookings = Booking.all
  end

  def new
  	#render :text => params.inspect
  	@booking=Booking.new('userid' => current_user.id, 'eventid' => params[:event])
  	@booking.save
  	redirect_to :back, :notice => "Event booked!"
  	
  end
end
