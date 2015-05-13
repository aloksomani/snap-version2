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
		@review = Review.find(params[:id])
		@review.destroy

	end




end
