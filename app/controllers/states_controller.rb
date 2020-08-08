class StatesController < ApplicationController

  def index
    states = State.all
    # render json: StateSerializer.new(states).to_serialized_json
    render json: states
  end

  def show
    state = State.find(params[:id])
    # render json: StateSerializer.new(state).to_serialized_json
    render json: state
  end

  def update
    state = State.find(params[:id])
    state.update(state_params(:name, :flower))
    # render json: StateSerializer.new(state).to_serialized_json
    render json: state
  end

  private

  def state_params(*args)
    params.require(:state).permit(*args)
  end

end