

puts "==========================" 

# THE-SECTION ========================= PROJECT AUTHENTICATOR

users = [
    {username: "mashrur", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password3"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password: "password5"},
]

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    return "Credentials were not correct"
end

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp.downcase
    print "Password: "
    password = gets.chomp.downcase

    auth = auth_user(username, password, users)
    puts auth

    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4




puts "==========================" 

# THE-SECTION ========================= RUBY STYLE GUIDE


this_is_snake_case = "This is snake case"

def my_name_is
    "My name is Fauzan"
end

class SomeClass
    def some_method
        "Some method"
    end
end



puts "==========================" 

# THE-SECTION =========================  AREA DICTIONARY

dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end


# Execution flow
loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp.downcase
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "You entered a city name not in the dictionary"
    end
end







puts "==========================" 

# THE-SECTION ========================= 