class ParksController < ApplicationController

  def index
    parks = Park.all
    render json: parks, except: [:created_at, :updated_at]
  end

  def show
    park = Park.find(params[:id])
    render json: park
  end

  def create 
    park = Park.new(park_params)
    if park.save
      render json: park
    else
      render json: {error: park.errors.full_messages}
    end
  end

  def update
    park = Park.find(params[:id])
    park.update(park_params)
    render json: park
  end

  private

  def park_params
    params.require(:park).permit(:name, :location, :state_id)
  end

end