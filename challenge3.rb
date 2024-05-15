require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
 pp dog breeds

# Access the hash containing the breeds and sub-breeds
breeds_hash = dog_breeds['message']

# Print out the dog breeds and sub-breeds
breeds_hash.each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}" unless sub_breed.empty?
  end
end