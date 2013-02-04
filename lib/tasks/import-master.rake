require 'csv'

#csv_text = File.read('lib/tasks/Master-small.csv')
#csv = CSV.parse(csv_text, :headers => true)
#csv.each do |row|
#  row = row.to_hash.with_indifferent_access()
#  Player.create!(row.to_hash.symbolize_keys)
#end

#CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
#   Player.create!(row.to_hash)
#end


desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
    CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
      Player.create!(row.to_hash)
    end
end
