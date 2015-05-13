class ReviewsController < ApplicationController
	def create
    @camera = Camera.find(params[:camera_id])
    @review = @camera.reviews.new(params.require(:review).permit(:description, :rating))
    @review.save
    redirect_to camera_path(@camera)
  end

  	def destroy
      @camera = Camera.find(params[:camera_id])
      @review = Review.find(params[:id])

  		# @review = Review.find(params[:id])
  		@review.destroy

      redirect_to camera_path(@camera)

  	end



end
