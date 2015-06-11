class ComparisonsController < ApplicationController
  def index
    @q = Comparison.ransack(params[:q])
    @comparisons = @q.result(distinct: true).includes(:plan, :user).page params[:page]




  end

  def show
    @comparison = Comparison.find(params[:id])
  end

  def new
    @comparison = Comparison.new
  end

  def create
    @comparison = Comparison.new
    @comparison.user_id = params[:user_id]
    @comparison.plan_id = params[:plan_id]
    @comparison.plan_type_id = params[:plan_type_id]
    @comparison.plan_number_id = params[:plan_number_id]
    @comparison.metal_level_id = params[:metal_level_id]
    @comparison.insurer_id = params[:insurer_id]
    @comparison.state_id = params[:state_id]
    @comparison.year_id = params[:year_id]
    @comparison.county_id = params[:county_id]

    if @comparison.save
      redirect_to "/comparisons", :notice => "Comparison created successfully."
    else
      render 'new'
    end
  end

  def edit
    @comparison = Comparison.find(params[:id])
  end

  def update
    @comparison = Comparison.find(params[:id])

    @comparison.user_id = params[:user_id]
    @comparison.plan_id = params[:plan_id]
    @comparison.plan_type_id = params[:plan_type_id]
    @comparison.plan_number_id = params[:plan_number_id]
    @comparison.metal_level_id = params[:metal_level_id]
    @comparison.insurer_id = params[:insurer_id]
    @comparison.state_id = params[:state_id]
    @comparison.year_id = params[:year_id]
    @comparison.county_id = params[:county_id]

    if @comparison.save
      redirect_to "/comparisons", :notice => "Comparison updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comparison = Comparison.find(params[:id])

    @comparison.destroy

    redirect_to "/comparisons", :notice => "Comparison deleted."
  end
end
