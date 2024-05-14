require 'net/http'
require 'json'
require 'pp'

# Initialize variables
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
ash_tree_count = 0
page_size = 1000
offset = 

loop do
  uri = URI("#{url}?$limit=#{page_size}&$offset=#{offset}")
  response = Net::HTTP.get(uri)
  tree_data = JSON.parse(response)

  # Stop the loop if no more data is returned
  break if tree_data.empty?

  # Uncomment the following line to inspect the structure of the data
   pp tree_data

  # Iterate over each tree in the dataset
  tree_data.each do |tree|
    # Check if the tree species contains 'ash' (case insensitive)
    if tree['common_name']&.downcase&.include?('ash') || tree['botanical_name']&.downcase&.include?('ash')
      ash_tree_count += 1
    end
  end

  # Increment offset for next page
  offset += page_size
end

puts "Total number of Ash trees in the dataset: #{ash_tree_count}"
