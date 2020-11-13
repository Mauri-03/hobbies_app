class BookingsController < ApplicationController
  def show
  end
  def new
    @booking = Booking.new
    @hobby = Hobby.find(params[:hobby_id])
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.hobby_id = Hobby.find(params[:hobby_id]).id
    @hobby = Hobby.find(params[:hobby_id])
  if @booking.save!
      redirect_to hobbies_path, notice: 'Yay! 🎉 You sent your request.'
    else
      render :new
    end
  end
  def edit
  end
  def confirm

  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_users_path, notice: 'Ok! ❌ you have declined the request.'
  end

private
  def set_booking
    @booking = Booking.find(params[:id])
  end
  def booking_params
    params.require(:booking).permit(:hobby_id, :message)
  end
end
