class BookingsController < ApplicationController
  def show
    # fetch bookings from db
    # send them to bookings view for display -> @view.
  end

  def new
    #
  end

  def create
    # get time slot, user_id and hobby_id from the view
    # create a new booking -> Booking.new(time_slot, user_id, hobby_id)
    # Add to db
  end

  def edit
    # get time slot, user_id and hobby_id from the view
    # update the booking -> Booking.....(time_slot, user_id, hobby_id)
    # Add to db
  end

  def update
  end
end
