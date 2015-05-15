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

	end
end