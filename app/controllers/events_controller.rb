class EventsController < ApplicationController

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end


  private

  def expense_params
    params.require(:expense).permit(:expense, :cost, :trip_id)
  end

end
