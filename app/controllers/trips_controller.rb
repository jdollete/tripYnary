class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.assign_attributes(user_id: current_user.id)
    if @trip.save
      redirect_to @trip
    else
      flash[:notice] = @trip.errors.full_messages
      render 'new'
    end
  end

  def show
    @trip = Trip.find_by(id: params[:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :city, :state, :country, :start_date)
  end

end
