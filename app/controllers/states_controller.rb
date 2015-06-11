class StatesController < ApplicationController
  def index
    @q = State.ransack(params[:q])
    @states = @q.result(distinct: true).includes(:plans).page params[:page]
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new
    @state.state = params[:state]

    if @state.save
      redirect_to "/states", :notice => "State created successfully."
    else
      redirect_to "/states", :notice => "State already in database."
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])

    @state.state = params[:state]

    if @state.save
      redirect_to "/states", :notice => "State updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @state = State.find(params[:id])

    @state.destroy

    redirect_to "/states", :notice => "State deleted."
  end
end
