class CountiesController < ApplicationController
  def index
    @q = County.ransack(params[:q])
    @counties = @q.result(distinct: true).includes(:plans).page params[:page]

  end

  def show
    @county = County.find(params[:id])
  end

  def new
    @county = County.new
  end

  def create
    @county = County.new
    @county.county = params[:county]

    if @county.save
      redirect_to "/counties", :notice => "County created successfully."
    else
      render 'new'
    end
  end

  def edit
    @county = County.find(params[:id])
  end

  def update
    @county = County.find(params[:id])

    @county.county = params[:county]

    if @county.save
      redirect_to "/counties", :notice => "County updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @county = County.find(params[:id])

    @county.destroy

    redirect_to "/counties", :notice => "County deleted."
  end
end
