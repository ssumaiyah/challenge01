# Name: Sumaiyah
require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) 
 # pp dog_breeds

breeds_hash = dog_breeds['message']

breeds_hash.each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}" unless sub_breed.empty?
  end
end