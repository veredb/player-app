require 'csv'

def import_from_csv(filename)
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
    CSV.foreach('lib/tasks/Master-small.csv', :headers => true) do |row|
      Player.create!(row.to_hash)
    end
end

end
