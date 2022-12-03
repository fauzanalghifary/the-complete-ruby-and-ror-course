require 'bundler/inline'

gemfile true do
    source 'https://rubygems.org'
    gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password
# puts my_password == "my password" # => true
# puts my_password == "not my password" # => false

my_password = BCrypt::Password.new("$2a$12$llAlcF3jSttqXTasiL19COZv4lF5hmAGotz7SWwGELHI3c4EUIlyy")
puts my_password == "my password" # => true
puts my_password == "not my password" # => false

