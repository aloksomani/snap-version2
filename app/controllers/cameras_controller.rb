class CamerasController < ApplicationController

  def index
    @cameras = Camera.all
  end

  def show
    @camera = Camera.find(params[:id])
  end

  def filtered_index
    @cameras = Camera.joins(:profiles).where(profiles: { style: params[:style] } )
    # @cameras = Camera.where(resolution: params[:res])
  end
  
end
