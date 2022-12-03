require_relative 'index5-crud.rb' 

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password
    # attr_reader: :username

    @first_name
    @last_name
    @email
    @username
    @password

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    # def set_username
    #     @username = "pojan123"
    # end

    # def first_name=(name)
    #     @first_name = name
    # end

    # def first_name
    #     @first_name
    # end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
    end
end

pojan = Student.new("Pojan", "Fauzan", "pojan123", "pojan@email.com", "password1")
# pojan.first_name = "Pojan"
# pojan.last_name = "Edu"
# pojan.username = "pojanedu"
# pojan.email = "pojanedu@email.com"
hashed_password = pojan.create_hash_digest(pojan.password)
puts pojan
puts hashed_password
# puts pojan.first_name



