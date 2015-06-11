class PlansController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @q = Plan.ransack(params[:q])
    @plans = @q.result(distinct: true).includes(:state, :year, :plan_type, :plan_number, :metal_level, :insurer, :county ).page params[:page]
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new
    @plan.ind_40_prem = params[:ind_40_prem]
    @plan.ind_27_prem = params[:ind_27_prem]
    @plan.insurer_id = params[:insurer_id]
    @plan.county_id = params[:county_id]
    @plan.plan_number_id = params[:plan_number_id]
    @plan.plan_name = params[:plan_name]
    @plan.state_id = params[:state_id]
    @plan.plan_type_id = params[:plan_type_id]
    @plan.year_id = params[:year_id]
    @plan.metal_level_id = params[:metal_level_id]

    if @plan.save
      redirect_to "/plans", :notice => "Plan created successfully."
    else
      render 'new'
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])

    @plan.ind_40_prem = params[:ind_40_prem]
    @plan.ind_27_prem = params[:ind_27_prem]
    @plan.insurer_id = params[:insurer_id]
    @plan.county_id = params[:county_id]
    @plan.plan_number_id = params[:plan_number_id]
    @plan.plan_name = params[:plan_name]
    @plan.state_id = params[:state_id]
    @plan.plan_type_id = params[:plan_type_id]
    @plan.year_id = params[:year_id]
    @plan.metal_level_id = params[:metal_level_id]

    if @plan.save
      redirect_to "/plans", :notice => "Plan updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])

    @plan.destroy

    redirect_to "/plans", :notice => "Plan deleted."
  end
end
