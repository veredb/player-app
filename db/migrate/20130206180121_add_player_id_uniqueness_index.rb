class AddPlayerIDUniquenessIndex < ActiveRecord::Migration
  def self.up
#    add_index :players, :playerID, :unique => true
  end

  def self.down
    remove_index :players, :playerID
  end
end
