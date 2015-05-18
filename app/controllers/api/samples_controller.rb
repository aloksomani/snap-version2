module API
	class SamplesController < ApplicationController
		def create
	    @camera = Camera.find(params[:camera_id])
	    # @sample = @camera.samples.new(params.require(:sample).permit(:photo, :remote_photo_url))
	    @sample = @camera.samples.new()
	    @sample.photo = params[:file]
	    @sample.save
	    render json: @sample
	   
	  end

	    def destroy
      @camera = Camera.find(params[:camera_id])
      @sample = Sample.find(params[:id])

  		
  		@sample.destroy

      # render json: :no_content
      head 204

  		end





	end
end