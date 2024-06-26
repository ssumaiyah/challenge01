# Name: Sumaiyah  
require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)
#pp tree_data
ash_tree_count = 0

tree_data.each do |tree|
  if tree['common_name']&.downcase&.include?('ash') || tree['botanical_name']&.downcase&.include?('fraxinus')
    ash_tree_count += 1
  end
end
puts "The total number of Ash trees: #{ash_tree_count}"
