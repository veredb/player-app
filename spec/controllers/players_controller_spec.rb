require 'spec_helper'

describe PlayersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
       get 'index'
       response.should have_selector("title", :content => "Index")
    end
  end
  
end
