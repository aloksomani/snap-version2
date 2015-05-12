module API

    class CamerasController < ApplicationController

      def index
          render json: Camera.all
      end

      def show
          @camera = Camera.find(params[:id])
      end
      
    end
end

