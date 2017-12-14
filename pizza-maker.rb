puts "How many pizzas do you want to order?"

quantity = gets.to_i
pizza_num = 1

quantity.times do
  puts "How many toppings for pizza #{pizza_num}?"
  toppings = gets.to_i
  puts "You have ordered a pizza with #{toppings} toppings"
  pizza_num += 1
end
