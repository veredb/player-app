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
      30.times do
         @players << Factory(:player, :nameLast => Factory.next(:nameLast))
      end
    end
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
       get :index
       response.should have_selector("title", :content => "All Players")
    end

    it "should have an element for each player" do
       get :index
       @players[0..2].each do |player|
          response.should have_selector("li", :content => player.nameLast)
       end
    end

    it "should paginate players" do
        get :index
        response.should have_selector("div.pagination")
        response.should have_selector("span.disabled", :content => "Previous")
#        response.should have_selector("a", :href => "/players?page=2", :content => "2")
#        response.should have_selector("a", :href => "/players?page=2", :content => "Next")
     end
  end        
end
