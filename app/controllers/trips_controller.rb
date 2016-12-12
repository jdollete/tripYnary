class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.assign_attributes(user_id: current_user.id)
    @trip.assign_attributes(address: "#{params[:trip][:street_address]} #{params[:trip][:city]} #{params[:trip][:state]} #{params[:trip][:country]}")
    if @trip.save
      redirect_to @trip
    else
      flash[:notice] = @trip.errors.full_messages
      render 'new'
    end
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    map_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @trip[:address].gsub(/ /, '+') + "&key=AIzaSyDGh4J2RKsYF8c83RREWX-h10VW1TLMbwE"
    map_uri = URI(map_url)
    map_response = Net::HTTP.get(map_uri)
    map_ruby_hash_response = JSON.parse(map_response)
    @lat = map_ruby_hash_response["results"][0]["geometry"]["location"]["lat"]
    @lng = map_ruby_hash_response["results"][0]["geometry"]["location"]["lng"]

    weather_url = "https://api.darksky.net/forecast/5dbe87e65abdb280858cd78d8f6f020a/" + "#{@lat}" + "," + "#{@lng}"
    weather_uri = URI(weather_url)
    weather_response = Net::HTTP.get(weather_uri)
    weather_ruby_hash_response = JSON.parse(weather_response)
    @current_temp = weather_ruby_hash_response["currently"]["temperature"]
    @current_weather = weather_ruby_hash_response["currently"]["summary"]
    # binding.pry
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :city, :state, :country, :start_date)
  end

end
