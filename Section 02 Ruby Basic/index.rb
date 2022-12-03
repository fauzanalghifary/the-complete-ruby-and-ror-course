# THE-SECTION ========================= INTRO 

print "Hello World 4" # print does not add a new line
puts "Hello World 2"
p "Hello World 3"

greeting = "Hello World!!"
puts greeting

def say_hello(thing_to_say)
  puts thing_to_say
end

say_hello "Hello RUBY!"

puts "=========================="

# THE-SECTION ========================= STRING

first_name = "fauzan"
last_name = "Al Ghifary"
puts "My Full Name is #{first_name} #{last_name}"
puts first_name.class

number = 10
puts number.to_s.class

puts first_name.length
puts first_name.reverse
puts first_name.capitalize
puts first_name.empty?

sentence = "Welcome to the jungle"
puts sentence.sub("the jungle", "utopia")

new_first_name = first_name
puts new_first_name
first_name = "Bukan Fauzan"
puts new_first_name
puts "Pojan asked me, \"Hey, what's up?\""

# puts "What is your first name?"
# first_name = gets.chomp
# puts "Thank you, #{first_name}"

# puts "Enter a number to multiply by 2"
# input = gets.chomp
# puts input.to_i * 2

puts "==========================" 

# THE-SECTION ========================= NUMBER

puts 1 + 2
puts 10 / 4
puts 10.0 / 4
puts 10 / 4.to_f
puts "5" * 2
# puts 2 * "5" #error

3.times { puts "Hello World" }
3.times { |i| puts "We are currently on loop number #{i}" }
3.times { puts rand(10) }

x = "5".to_i
y = "10".to_f
puts x + y

# num_1 = gets.chomp.to_i
# puts num_1
puts 10 % 3



puts "==========================" 

# THE-SECTION ========================= COMPARISON OPERATOR


puts 10 == 9 #false
puts 10 == "10" #false
puts 10 == 10 #true
puts 10 == 10.0 #true
puts 10 === 10.0 #true
puts 10.eql?(10.0) #false


puts "==========================" 

# THE-SECTION ========================= METHOD

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

puts multiply(3, 4)

puts "==========================" 

# THE-SECTION ========================= IF ELSE

if !true && 2 == 2
    puts "I get printed"
elsif 1 == 1
    puts "TRUEEE"
else
    puts "I don't"
end


puts "==========================" 

# THE-SECTION ========================= ARRAY


a = [1, 2, 3, 4, 5]
p a
p a.last

x = 1..10
p x.to_a.shuffle!
p x

z = x.to_a.shuffle!
p z

alphabet = ("a".."z").to_a
# p alphabet.to_a.shuffle
alphabet << "z" #add z to the end of the array
alphabet.append("al ghifary") #add al ghifary to the end of the array
alphabet.unshift("pojan") #add pojan to the beginning of the array
alphabet.insert(1, "fauzan") #add fauzan to the index 1 of the array
alphabet.push("pojan") #add pojan to the end of the array (same as <<)


alphabet.pop #remove the last element of the array
alphabet.delete("fauzan") #remove fauzan from the array
alphabet.uniq! #remove duplicate element from the array

# p alphabet.include?("fauzan") #check if fauzan is in the array

# p alphabet.sort #sort the array
# p alphabet.join(", ") #join the array with comma and space
p alphabet.join(", ").split(", ") #split the array with comma and space
p %w(my name is fauzan) #split the string with space

p alphabet.each { |letter| puts letter.capitalize } #loop through the array
p alphabet.map { |letter| letter.upcase } #loop through the array and return the result
p alphabet.select { |letter| letter == "pojan" } #loop through the array and return the result that match the condition

# p alphabet


puts "==========================" 

# THE-SECTION ========================= HASH


sample_hash = { "name" => "fauzan", "age" => 25, "hungry?" => true }
p sample_hash["name"]

my_details = { :name => "fauzan", :favcolor => "red" }
p my_details[:name]
p my_details.keys
p my_details.values
p my_details.has_key?(:name)
p my_details.has_value?("red")
p my_details.each { |key, value| puts "The class for key is #{key.class} and the value is #{value.class}" }

my_details[:age] = 25
p my_details

p my_details.select { |key, value| value.is_a?(String) }
my_details.delete(:favcolor)
p my_details


puts "==========================" 

# THE-SECTION =========================



