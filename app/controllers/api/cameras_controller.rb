module API

  class CamerasController < ApplicationController

    before_action :restrict_access, only: []

    def index

      ################################################################################
      # Sets default values for queries unless a paramter comes in from a radio button
      p params
      profile = params["style"] || nil
      portability = params["portability"] || 1

      if params["price"] == "600"
        price_start = 0
        price_end = 600
      elsif params["price"] == "1200"
        price_start = 601
        price_end = 1200
      elsif params["price"] == "2100"
        price_start = 1201
        price_end = 2100
      else
        price_start = 0
        price_end = 2100
      end

      ################################################################################
      # Queries to filter cameras on index page

      if (profile == nil)
        @cameras = Camera.where("portability >= ?", portability).where(price: price_start..price_end)
      elsif (profile != nil)
        @cameras = Camera.joins(:profiles).where(profiles: {style: profile} ).where("portability >= ?", portability).where(price: price_start..price_end)
      else
        @cameras = Camera.all
      end

      render json: @cameras
    end



    def show
           @camera = Camera.find(params[:id])
           @review = Review.new
           @sample = Sample.new

           @reviews = @camera.reviews
           @samples = @camera.samples

           render json: @camera
    end
    
    
  	def destroy
          @camera = Camera.find(params[:id])

          @camera.reviews.destroy_all
          @camera.samples.destroy_all
          @camera.destroy

          redirect_to cameras_path
  	end

  

          

  end #end of CamerasController class

end # end of API module

