class PlanTypesController < ApplicationController
  def index
        @q = PlanType.ransack(params[:q])
        @plan_types = @q.result(distinct: true).includes(:plans).page params[:page]
  end

  def show
    @plan_type = PlanType.find(params[:id])
  end

  def new
    @plan_type = PlanType.new
  end

  def create
    @plan_type = PlanType.new
    @plan_type.plan_type = params[:plan_type]

    if @plan_type.save
      redirect_to "/plan_types", :notice => "Plan type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @plan_type = PlanType.find(params[:id])
  end

  def update
    @plan_type = PlanType.find(params[:id])

    @plan_type.plan_type = params[:plan_type]

    if @plan_type.save
      redirect_to "/plan_types", :notice => "Plan type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plan_type = PlanType.find(params[:id])

    @plan_type.destroy

    redirect_to "/plan_types", :notice => "Plan type deleted."
  end
end
