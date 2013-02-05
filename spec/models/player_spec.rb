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
  it "should require a playerID, birthYear, nameFirst, nameLast"
end


describe Player do

   it "should import all the data from a file" do
      count = Player.count
      count_data_in_csv = 0 
      CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
          count_data_in_csv = row.count
      end
      count.should == count_data_in_csv
      
    end
end
