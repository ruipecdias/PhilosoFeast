class DinnersController < ApplicationController
  before_action :authenticate_user!

  def new
    @philosopher = Philosopher.find(params[:philosopher_id])
    @dinner = @philosopher.dinners.build
  end

  def create

    @philosopher = Philosopher.find(params[:philosopher_id])
    @dinner = Dinner.new(dinner_params)
    @dinner.philosopher = @philosopher
    @dinner.user = current_user
    if @dinner.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  private

  def dinner_params
    params.require(:dinner).permit(:date, :length, :credit_card_number)
  end
end
