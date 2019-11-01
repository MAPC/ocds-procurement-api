require 'csv'

filepath = Rails.root.join('lib', 'import', 'users.csv')
CSV.foreach(filepath, headers: true) do |row|
  User.create! row.to_hash
end
