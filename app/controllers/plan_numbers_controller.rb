class PlanNumbersController < ApplicationController
  def index
    @q = PlanNumber.ransack(params[:q])
    @plan_numbers = @q.result(distinct: true).includes(:plans).page params[:page]

  end

  def show
    @plan_number = PlanNumber.find(params[:id])
  end

  def new
    @plan_number = PlanNumber.new
  end

  def create
    @plan_number = PlanNumber.new
    @plan_number.plan_number = params[:plan_number]

    if @plan_number.save
      redirect_to "/plan_numbers", :notice => "Plan number created successfully."
    else
      render 'new'
    end
  end

  def edit
    @plan_number = PlanNumber.find(params[:id])
  end

  def update
    @plan_number = PlanNumber.find(params[:id])

    @plan_number.plan_number = params[:plan_number]

    if @plan_number.save
      redirect_to "/plan_numbers", :notice => "Plan number updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plan_number = PlanNumber.find(params[:id])

    @plan_number.destroy

    redirect_to "/plan_numbers", :notice => "Plan number deleted."
  end
end
