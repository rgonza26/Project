class SiteController < ApplicationController
  def index
  end



  def profile
  	@bookings = Booking.where(:userid => current_user.id)
  	@mainevents = Mainevent.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    
  end

  def contactUs
  end
end
