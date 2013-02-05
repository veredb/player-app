require 'spec_helper'

require 'factory_girl'
Factory.find_definitions


describe PlayersController do

  render_views

  describe "GET 'index'" do

    before(:each) do
      @player = Factory(:player)
      second = Factory(:player, :nameLast => "name2")
      third = Factory(:player, :nameLast => "name3")

      @players = [@player, second, third]
    end
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
       get :index
       response.should have_selector("title", :content => "All Players")
    end

    it "should have n element for each player" do
       get :index
       @players.each do |player|
          response.should have_selector("li", :content => player.nameLast)
       end
    end
  end
  
end
