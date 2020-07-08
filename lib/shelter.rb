class Shelter < ActiveRecord::Base
    has_many :pets
    # has_many :families

    def self.logging_in
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email?")
        # found_email = Shelter.find_by(email: email)
        if !Shelter.find_by(email: email) 
            puts "Sorry, that email is not in our system. Try logging in again or register"
            # Interface.choose_login_or_register
        end
        
    end

    def self.register
        prompt = TTY::Prompt.new
        email = prompt.ask("What is your email? Your email will be used to log in")
        if Shelter.find_by(email: email)
            puts "Sorry, this email already exists in our system. Try logging in with that email"
            # Interface.choose_login_or_register
        else
        name = prompt.ask("What is the name of your Shelter?")
        location = prompt.ask("What is your address?")
        self.create(
            email: email,
            name: name,
            location: location
        )
        end
    end


    def display_pets
        pet_names = self.pets.map do |pet_instance|
            {pet_instance.name => pet_instance.id}
        end
        # pet_id = prompt.multi_select("Choose a Pet", pet_names)
        # binding.pry

        if pet_names.length > 0
            pet_id = TTY::Prompt.new.select("Choose a pet", pet_names)
            found_pet = Pet.find(pet_id)
            found_pet.display_families
        else
            puts "You don't have any pets in your database!"
        end 
    end
    


end