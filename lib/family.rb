class Family < ActiveRecord::Base
    has_many :requests
    has_many :pets, through: :requests
    # has_many :shelters
    # has_many :shelters, through: :pets

    def self.login_or_register
        prompt = TTY::Prompt.new
        answer = prompt.select("Are you logging in or registering?", [
            "Logging In",
            "Registering"
        ])

        if answer == "Logging In"
            self.logging_family_in
        elsif answer == "Registering"
            self.register_family
        end
    end

    def self.register_family
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email? Your email will be used to log in")
        if Family.find_by(email: email)
            puts "Sorry, this email already exists in our system"
        end
        name = prompt.ask("What is your first and last name?")
        address = prompt.ask("What is your address?")
        preferences = prompt.ask("What are you looking for in your future pet?")
        Family.create(
            email: email,
            name: name,
            address: address,
            preferences: preferences
        )
    end

    def self.logging_family_in
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email?")
        found_email = Family.find_by(email: email)
        if found_email
            return found_email
        else 
            puts "Sorry, that email is not in our system. Try logging in again or register"
            self.login_or_register
        end
    end
end