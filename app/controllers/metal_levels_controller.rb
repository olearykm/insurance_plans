class MetalLevelsController < ApplicationController
  def index
    @metal_levels = MetalLevel.all
  end

  def show
    @metal_level = MetalLevel.find(params[:id])
  end

  def new
    @metal_level = MetalLevel.new
  end

  def create
    @metal_level = MetalLevel.new
    @metal_level.metal_level = params[:metal_level]

    if @metal_level.save
      redirect_to "/metal_levels", :notice => "Metal level created successfully."
    else
      render 'new'
    end
  end

  def edit
    @metal_level = MetalLevel.find(params[:id])
  end

  def update
    @metal_level = MetalLevel.find(params[:id])

    @metal_level.metal_level = params[:metal_level]

    if @metal_level.save
      redirect_to "/metal_levels", :notice => "Metal level updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @metal_level = MetalLevel.find(params[:id])

    @metal_level.destroy

    redirect_to "/metal_levels", :notice => "Metal level deleted."
  end
end
