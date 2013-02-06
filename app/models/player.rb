class Player < ActiveRecord::Base
  attr_accessible :birthYear, :nameFirst, :nameLast, :playerID

  validates :nameFirst, :nameLast, :birthYear, :playerID, :presence => true
  validates :playerID, :uniqueness => { :case_sensitive => false }
end
