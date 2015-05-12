class SamplesController < ApplicationController
	def create
    @camera = Camera.find(params[:id])
    @sample = @camera.samples.new(params.require(:sample).permit(:photo, :remote_image_url))
    @sample.save
    redirect_to camera_path(@camera)
  end

end
