# A party is represented by a location, theme, and number of guests
data Party:
  | party(location :: String, 
      theme :: String, 
      guests :: Number)
end

Halloween = party("school", "costume", 10)
Summer = party("beach", "luau", 7)
JulyFourth = party("backyard", "barbecue", 12)