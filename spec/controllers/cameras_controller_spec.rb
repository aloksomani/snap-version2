require 'rails_helper'

RSpec.describe CamerasController, type: :controller do
      before :each do
            @camera1 = FactoryGirl.create(:camera) #first argument is object that you want to make; second argument is how many you want
            @camera2 = FactoryGirl.create(:camera) #first argument is object that you want to make; second argument is how many you want
      end

     describe "GET #index" do
        before :each do 
            get :index
        end
      
        it "renders the index template showing all cameras" do
            expect(response).to render_template(:index)
        end

        it "should have a response status code of 200" do 
            expect(response).to have_http_status(200)
        end

        it "assigns all cameras to the variable @cameras" do 
            expect(assigns(:cameras)).to include(@camera1, @camera2)
        end
    end #end of "GET request to index"


    describe "GET #show" do 
        before :each do
            get :show, id: @camera1.id 
        end

        it "renders the show template for that individual camera" do 
            expect(response).to render_template :show
        end

        it "should have a response status code of 200" do 
            expect(response).to have_http_status(200)
        end 

        it "assigns a camera to @camera" do 
            expect(assigns(:camera)).to eq(@camera1)
        end
    end #end of get #show

end
