class ParksController < ApplicationController

  def index
    parks = Park.all
    render json: parks, except: [:created_at, :updated_at]
  end

  def show
    park = Park.find(params[:id])
    render json: park
  end


end