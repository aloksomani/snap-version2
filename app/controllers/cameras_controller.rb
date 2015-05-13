class CamerasController < ApplicationController
  def index
      @cameras = Camera.all
  end

  def show
      @camera = Camera.find(params[:id])
       @review = Review.new
       @sample = Sample.new
  end
  
	def destroy
    @camera = Camera.find(params[:id])

    @camera.reviews.destroy_all
    @camera.destroy


    redirect_to cameras_path

	end




end
