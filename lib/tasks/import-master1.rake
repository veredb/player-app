require 'csv'

desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
   CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
     Player.create!(row.to_hash)
   end
end


#desc "Imports a CSV file into an ActiveRecord table"
#task :import, [:filename] => :environment do    
#   CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row, index|
#     row = row.to_hash.with_indifferent_access
#     Player.create!(row.to_hash.symbolize_keys)
#     if Player.valid?
#        Player.save
#     else
#        errs << row
#     end
#   end
#end
