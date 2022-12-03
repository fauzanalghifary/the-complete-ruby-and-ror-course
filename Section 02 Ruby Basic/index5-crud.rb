# require 'bundler/inline'

# gemfile true do
#     source 'https://rubygems.org'
#     gem 'bcrypt'
# end

module Crud

    require 'bcrypt'
    puts "Module Crud activated"

    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    def verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    # new_password = create_hash_digest("my password")
    # puts new_password == "my password"

    # users = [
    #     {username: "mashrur", password: "password1"},
    #     {username: "jack", password: "password2"},
    #     {username: "arya", password: "password3"},
    #     {username: "jonshow", password: "password4"},
    #     {username: "heisenberg", password: "password5"},
    # ]

    def create_secure_users(list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end
        list_of_users
    end

    # new_users = create_secure_users(users)

    def authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end
        end
        "Credentials were not correct"
    end

    # puts authenticate_user("mashrur", "password1", new_users)

end