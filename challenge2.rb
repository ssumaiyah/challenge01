#Name: Sumaiyah
ghosts = [
  {
    name: 'Inky',
    age: 4,
    loves: 'reindeers',
    bank_balance: 25
  },
  {
    name: 'Pinky',
    age: 5,
    loves: 'garden tools',
    bank_balance: 14
  },
  {
    name: 'Blinky',
    age: 7,
    loves: 'ninjas',
    bank_balance: 18.03
  },
  {
    name: 'Clyde',
    age: 6,
    loves: 'yarn',
    bank_balance: 0
  }
]
# Displaying each ghost's information
ghosts.each do |ghost|
    puts "#{ghost[:name]} is #{ghost[:age]} years old , loves #{ghost[:loves]} and has #{ghost[:bank_balance]} dollars in the bank."
end 