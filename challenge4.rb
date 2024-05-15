require 'net/http'
require 'json'

# Fetching tree data from the Winnipeg city's open dataset
tree_url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
tree_uri = URI(tree_url)
tree_response = Net::HTTP.get(tree_uri)
tree_data = JSON.parse(tree_response)

# Counting the number of Ash Trees
ash_tree_count = 0
tree_data.each do |tree|
  if tree['common_name']&.downcase&.include?('ash')
    ash_tree_count += 1
  end
end

puts "Number of Ash Trees in the dataset: #{ash_tree_count}"
