names = [ "Will", "Damian", "Anthony", "MTS" ]
greetings = [ "Hello", "Sup", "Hola", "Hi", "Ciao", "Salutations"]

# combining 2 arrays in order.

puts "Four developers walk into a bar..."

list = names.zip( greetings )
  list.each do |names,greetings|
  p "#{greetings} #{names}"
      
end


# This is the randomly ordered combination of the arrays,
# also using the zip function.

puts "For my next trick, I will greet each of you with a random salutation!"

list = names.zip( elements = greetings.sort_by{rand}[0..3] )
    list.each do |names,greetings|
p "#{greetings} #{names}"

end

# Performing the same function as the first block,
# but in a different way.

puts "Performing the same task as the first, because I cheated the first time."

for index in 0 ... names.size
  puts "#{greetings[index]} #{names[index]}"
end

puts "And the same with the second..."

for index in 0 ... names.size
  puts "#{greetings.sort_by{rand}[index]} #{names[index]}"
end

puts "And now the Ruby way."

names.each_with_index do | name, index |
  puts "#{greetings[index]} #{name}"
end

