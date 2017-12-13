fav_colours = ["blue", "red", "green", "purple"]
ages = [33, 29, 32, 31]
coin_flips = ["heads", "tails", "tails", "heads", "tails"]
fav_artists = ["Phish", "Grateful Dead", "Umphrey's McGee"]
fav_colours_labels = [:blue, :red, :green, :purple]

word_defs = {finite: "a number with a defined value in the real number set",
  heady: "requiring one to think deeply",
  chomper: "one who grinds one's teeth"
}
fav_movies = {Pulp_Fiction: 1994, Rushmore: 1998, Raising_Arizona: 1987}
cities = {Toronto: 2809000, London: 8788000, Mumbai: 18410000}
names_ages = {Jeff: 33, Moya: 29, Adam: 32, Dan: 33}

#exercise 1

# puts coin_flips
# puts fav_colours[0]
# puts ages.sort
# ages << 0
# puts ages
# puts "Rushmore was released in #{fav_movies[:Rushmore]}"

#exercise 2

# puts fav_colours[-1]
# cities[:Tokyo] = 9273000
# puts cities[:Mumbai]
# fav_artists.each do |band|
#   puts "I think #{band} is great"
# end

#exercise 3

puts fav_artists[0..1]
fav_movies.each do |movie, year|
  puts "#{movie} came out in #{year}"
end
reverse_sorted_ages = ages.sort.reverse
puts reverse_sorted_ages
fav_movies[:Beauty_and_the_Beast] = [1991, 2017]
