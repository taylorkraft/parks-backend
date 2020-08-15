class StatesController < ApplicationController

  def index
    states = State.all
    # render json: StateSerializer.new(states).to_serialized_json
    render json: states, except: [:created_at, :updated_at]
  end

  def show
    state = State.find(params[:id])
    # render json: StateSerializer.new(state).to_serialized_json
    render json: state
  end

  def create 
    state = State.new(state_params(:name, :flower))
    if state.save
      render json: state
    else
      render json: {error: state.errors.full_messages}
    end
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