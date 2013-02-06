require 'spec_helper'
require 'rake'
require 'csv'
require 'active_record'


describe Player do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Player do

  before(:each) do
     @attr = { :playerID => "aaronha01", :birthYear => 1934, :nameFirst => "Hank", :nameLast => "Aaron" }
  end

  it "should create a new instance given valid attributes" do
     Player.create!(@attr)
  end


#  it "should import all the data from a file" do
#      count = Player.count
#      count_data_in_csv = 0 
#      CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
#          count_data_in_csv = row.count
#      end
#      count.should == count_data_in_csv
      
#   end


# form validation
   
  it "should require a nameLast" do
       no_name_player = Player.new(@attr.merge(:nameLast => ""))
       no_name_player.should_not be_valid 
   end 

  it "should require a nameFirst" do
       no_name_player = Player.new(@attr.merge(:nameFirst => ""))
       no_name_player.should_not be_valid 
   end 

  it "should require a birthYear" do
       no_name_player = Player.new(@attr.merge(:birthYear => ""))
       no_name_player.should_not be_valid 
   end 

  it "should require a playerID" do
       no_name_player = Player.new(@attr.merge(:playerID => ""))
       no_name_player.should_not be_valid 
   end 

  it "should reject playerIDs identical up to case" do
       upcased_playerID = @attr[:playerID].upcase
       Player.create!(@attr.merge(:playerID => upcased_playerID))
       player_with_duplicate_playerID = Player.new(@attr)
       player_with_duplicate_playerID.should_not be_valid
       
  end
  
end


