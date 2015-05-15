module API
class ReviewsController < ApplicationController
	# def create
 #    @camera = Camera.find(params[:camera_id])
 #    @review = @camera.reviews.new(params.require(:review).permit(:description, :rating))
 #    @review.save
 #    redirect_to camera_path(@camera)
 #  end

    def create
      @camera = Camera.find(params[:camera_id])
      @review = @camera.reviews.new(params.require(:review).permit(:description, :rating))

      if @review.save
        render json: @review, status: 201
      else
        render json: {errors: @review.errors}, status: 422
      end
    end

  	def destroy
      @camera = Camera.find(params[:camera_id])
      @review = Review.find(params[:id])

  		# @review = Review.find(params[:id])
  		@review.destroy

      # render json: :no_content
      head 204

  	end



end
end
