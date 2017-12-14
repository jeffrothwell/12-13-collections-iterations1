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
names_ages = {Jeff: 33, Moya: 29, Adam: 32, Dan: 31}

##    exercise 1

puts coin_flips
puts fav_colours[0]
puts ages.sort
ages << 0
puts "Rushmore was released in #{fav_movies[:Rushmore]}"

##    exercise 2

puts fav_colours[-1]

cities[:Tokyo] = 9273000

puts cities[:Mumbai]

fav_artists.each do |band|
  puts "I think #{band} is great"
end

##     exercise 3

puts fav_artists[0..1]

fav_movies.each do |movie, year|
  puts "#{movie} came out in #{year}"
end

reverse_sorted_ages = ages.sort.reverse
puts reverse_sorted_ages

fav_movies[:Beauty_and_the_Beast] = [1991, 2017]

#    exercise 4

ages.each do |age|
  if age < 32
    puts age
  end
end

puts "The max age in my array is #{ages.max}"

coin_flips.count("heads")

fav_artists.delete("Umphrey's McGee")

cities[:Toronto] = 3900000

##    exercise 5

cities.values.sum

names_ages.each do |name, age|
  if age < 32
    puts "#{name} is young."
  else
    puts "#{name} is old."
  end
end

ages.map { |age| puts age + 1 }

fav_colours.push("yellow", "pink")

#    exercise 6

movies_by_years = {1999 => ["The Matrix", "Star Wars: Ep 1", "The Mummy"],
2009 => ["Avatar", "Star Trek", "District 9"],
2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Ep 9"]
}

phone_rows = [[1,2,3],[4,5,6],[7,8,9],["*",0,"#"]]

countries = [{name: "Germany", continent: "Europe", island: false},
{name: "Madagascar", continent: "Africa", island: true},
{name: "Azerbaijan", continent: "Asia?", island: false}]

#     exercise 7
20.times do
  puts "I will not skateboard in the halls"
end

detention = Array.new(20, "I will not skateboard in the halls")

one_to_fify = (1..50).to_a

sum = 0
one_to_fify.each { |num| sum += num }


#the above can also be done in one line like this:
one_to_fify.reduce(:+)

#making an array of numbers one to fifty 3 times each number,
#here's one way to do it:
three_one_to_fifty = []
i = 1
50.times do
  3.times do
    three_one_to_fifty << i
  end
  i += 1
end

#and here's another, much more simple
three_one_to_fifty = (one_to_fify*3).sort

# use select method here to get all non-island hashes
non_islands = countries.select { |country| country[:island] == false }

# at this point we have an array of hashes called "non_islands"
# in which each element is a hash, but say I wanted an Array
#containing just the names of the countries that aren't islands

non_islands_coutries = [] #initiate empty array to store the country names

non_islands.each do |country|
  non_islands_coutries << country[:name]
end
# non_islands_coutries is now a simple array with only the country names

#    exercise 8
def expense_sum(expenses)
  expenses.sum
end
#this hardly seems worth putting in a method
#I think the question wanted an each iteration
#define sum = 0 outside the code block,
#then add each element with the iteration

expenses1 = [245, 65.34, 9654, 874.3]
expenses2 = [536, 2375.4, 974, 748]

expense_sum(expenses1)
expense_sum(expenses2)

#    exercise 9

grocery_list = ["carrots", "soup", "samosas", "milk", "cereal", "salmon"]

def print_list (items)
  count = 0
  items.each do |item|
    puts "* #{item}"
    count += 1
  end
  puts "Total items = #{count}"
end

grocery_list << "rice"

print_list(grocery_list)

if grocery_list.include?("bananas") == true
  puts "You need to pick up bananas"
else
  puts "You don't need to pick up bananas today"
end

puts "Second item: #{grocery_list[1]}"

puts "sorted list:"
print_list(grocery_list.sort)

puts "List without salmon:"
grocery_list.delete("salmon")
print_list(grocery_list)
