numbers = (1..100).to_a

numbers.each do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "BitMaker"
  elsif num % 3 == 0
    puts "Bit"
  elsif num % 5 == 0
    puts "Maker"
  else
    puts "#{num}"
  end
end
