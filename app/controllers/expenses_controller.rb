class ExpensesController < ApplicationController

  def new
    @expense = Expense.new
  end

  def edit

  end

  def create
    @expense = Expense.new(expense_params)
    @expense.assign_attributes(trip_id: params[:trip_id])
    if @expense.save

    else
      redirect_to "trips/#{params[:trip_id]}/expenses/new"
    end
  end

  def update
    expense = Expense.find_by(id: params[:id])
    expense.update(expense_params)
  end

  def destroy
    expense = Expense.find_by(id: params[:id])
    expense.destroy
  end

  private

  def expense_params
    params.require(:expense).permit(:expense, :cost, :trip_id)
  end

end
