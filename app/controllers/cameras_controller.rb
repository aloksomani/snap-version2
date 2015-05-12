class CamerasController < ApplicationController

  def index
    if params[:style]
      @cameras = Camera.joins(:profiles).where(profiles: {style: params[:style]} ).where(brand: params[:brand])
    else
      @cameras = Camera.all
    end
  end

  def show
    @camera = Camera.find(params[:id])
  end

end
