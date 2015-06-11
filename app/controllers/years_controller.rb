class YearsController < ApplicationController
  def index
    @years = Year.all
  end

  def show
    @year = Year.find(params[:id])
  end

  def new
    @year = Year.new
  end

  def create
    @year = Year.new
    @year.year = params[:year]

    if @year.save
      redirect_to "/years", :notice => "Year created successfully."
    else
      render 'new'
    end
  end

  def edit
    @year = Year.find(params[:id])
  end

  def update
    @year = Year.find(params[:id])

    @year.year = params[:year]

    if @year.save
      redirect_to "/years", :notice => "Year updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @year = Year.find(params[:id])

    @year.destroy

    redirect_to "/years", :notice => "Year deleted."
  end
end
