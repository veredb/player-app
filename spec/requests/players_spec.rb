 require 'spec_helper'
  
  describe "Players" do
   describe "New Player" do
    describe "success" do
          before(:each) do
              @attr = { :playerID => "NewUser01", :birthYear => 1965, :nameFirst => "foobar",
                           :nameLast => "mistic" }
          end
          
          it "should make a new user" do
            lambda do
              visit new_player_path                     
              fill_in :playerID,                        :with => @attr[:playerID]
              fill_in :birthYear,                       :with => @attr[:birthYear]
              fill_in :nameFirst,                       :with => @attr[:nameFirst]
              fill_in :nameLast,                        :with => @attr[:nameLast]
              click_button
              response.should render_template('players/new')
            end.should change(Player, :count).by(1)
          end
    end
   end
  end
      
