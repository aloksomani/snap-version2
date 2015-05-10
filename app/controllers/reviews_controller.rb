class ReviewsController < ApplicationController
	  def create
    @camera = Camera.find(params[:id])
    @review = @camera.reviews.new(params.require(:review).permit(:description, :rating))
    @review.save
    redirect_to camera_path(@camera)
  end
end
