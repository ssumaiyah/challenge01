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
# Process the ghosts array and generate the italicized text
ghosts.each do |ghost|
    ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
    ghost_info += "loves #{ghost[:loves]} and "
    ghost_info += "has #{ghost[:bank_balance]} dollars in the bank."
    puts ghost_info
end