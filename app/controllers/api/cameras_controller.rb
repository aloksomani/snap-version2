module API

    class CamerasController < ApplicationController

      def index
          render json: Camera.all
      end

      def show
        # render json: Camera.find(params[:id])

        @camera = Camera.find(params[:id])
        render json: @camera
      end

    end
end

