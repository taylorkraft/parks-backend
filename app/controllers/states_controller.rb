class StatesController < ApplicationController

  def index
    states = State.all
    render json: states, include: [:parks], except: [:created_at, :updated_at]
  end

  def show
    state = State.find(params[:id])
    render json: state, include: [:parks]
  end

  def create 
    state = State.new(state_params(:name, :flower))
    if state.save
      render json: state, include: [:parks]
    else
      render json: {error: state.errors.full_messages}
    end
  end

  def update
    state = State.find(params[:id])
    state.update(state_params(:name, :flower))
    render json: state, include: [:parks]
  end

  private

  def state_params(*args)
    params.require(:state).permit(*args)
  end

end