class DinnersController < ApplicationController
  def index
    @dinners = Dinner.all
  end

  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      redirect_to dinners_path(@dinner)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
