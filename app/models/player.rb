class Player < ActiveRecord::Base
  attr_accessible :birthYear, :nameFirst, :nameLast, :playerID

  validates :nameFirst, :nameLast, :birthYear, :playerID, :presence => true
end
