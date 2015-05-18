module API

    class UsersController < ApplicationController

        before_action :restrict_access, only: [:update,:destroy]

        # skip_before_action  :verify_authenticity_token

        def index
           @users = User.all

           render json: @users
        end

        def show
            @user = User.find(params[:id])

            render json: @user
        end

         def create
            @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation, :address_line_1, :city, :state, :zipcode))

            if @user.save
                render json: @user, status: 201
              else
                render json: {errors: @user.errors}, status: 422
            end

        end #end of create method

          private
          def restrict_access
              token = User.find_by(token: params[:token])
            render json: {error:"You need to be logged in to access this"}, status: 401 unless token
            end 

    end #end of UsersController

end #end of API module