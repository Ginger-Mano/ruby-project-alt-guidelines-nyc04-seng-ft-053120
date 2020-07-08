class Shelter < ActiveRecord::Base
    has_many :pets
    # has_many :families

    def self.logging_in
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email?")
        found_email = Shelter.find_by(email: email)
        if found_email
            return found_email
        else 
            puts "Sorry, that email is not in our system. Try logging in again or register"
            Interface.choose_login_or_register
        end
    end

    def self.register
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email? Your email will be used to log in")
        if self.find_by(email: email)
            puts "Sorry, this email already exists in our system. Try logging in with that email"
            Interface.choose_login_or_register
        end
        name = prompt.ask("What is the name of your Shelter?")
        location = prompt.ask("What is your address?")
        self.create(
            email: email,
            name: name,
            location: location
        )
    end


end