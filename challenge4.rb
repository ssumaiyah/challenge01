require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

# Uncomment the following line to inspect the structure of the data
# pp tree_data

# Initialize a counter for ash trees
ash_tree_count = 0

# Iterate over each tree in the dataset
tree_data.each do |tree|
  # Check if the tree species contains 'ash' (case insensitive)
  if tree['common_name']&.downcase&.include?('ash') || tree['botanical_name']&.downcase&.include?('fraxinus')
    ash_tree_count += 1
  end
end

puts "The total number of Ash trees in the dataset: #{ash_tree_count}"
