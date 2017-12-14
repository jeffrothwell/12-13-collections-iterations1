students = {cohort1: 34, cohort2: 42, cohort3: 22}

students.each do |cohort, num|
  puts "#{cohort}: #{num} students"
end

students[:cohort4] = 43

puts students.keys

more_students = {}

students.each do |cohort, num|
  more_students[cohort] = num * 1.05
end

puts more_students

students.delete(:cohort2)
puts students

total_students = 0

students.each do |cohort, num|
  total_students += num
end

puts "There are #{total_students} across all cohorts"
