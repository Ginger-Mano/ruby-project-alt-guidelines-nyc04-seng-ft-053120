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
            #Shelter.find_by(email: email) 
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
        # binding.pry
        # pet_id = prompt.multi_select("Choose a Pet", pet_names)
        # binding.pry

        if pet_names.length > 0
            pet_id = TTY::Prompt.new.select("Choose a pet", pet_names)
            found_pet = Pet.find(pet_id)
            binding.pry
            found_pet.display_families
        else
            puts "You don't have any pets in your database!"
        end 
    end

    def add_a_pet
        prompt = TTY::Prompt.new
        pet_name = prompt.ask("What is the pet's name?")
        
        breed = prompt.ask("What is the breed of this pet?")
        age = prompt.ask("How old is the pet?")
        description = prompt.ask("How would you describe this pet?")
        #binding.pry
        Pet.create(
            name: pet_name,
            breed: breed,
            age: age,
            adoption_status: "Available",
            description: description,
            shelter_id: self.id
        )
        puts "Your pets been successfully added!"
    end
    
    def add_request
        # binding.pry
        family_names = Family.all.map do |family_instance|
            {family_instance.name => family_instance.id}
        end
        family_id = TTY::Prompt.new.select("Which family made the request?", family_names)
        found_family = Family.find(family_id)
        # binding.pry
        pet_names = self.pets.map do |pet_instance|
            {pet_instance.name => pet_instance.id}
        end
        pet_id = TTY::Prompt.new.select("Choose a pet", pet_names)
        found_pet = Pet.find(pet_id)
         binding.pry 

        Request.create(
            family: found_family,
            pet: found_pet,
            status: "Pending",
            family_name: found_family.name,
            pet_name: found_pet.name
        )
        found_pet.adoption_status = "Pending"
        puts "The #{found_family.name} family has successfully requested the adoption of #{found_pet.name}!"
    end

    def update_request
        # binding.pry
        #request_names = Request.all.map do |req_instance|
            # binding.pry
         #   {req_instance.family_name => req_instance.pet_name}
        # end
        request_pet_names = Request.all.map do |req_instance|
            {req_instance.pet_name => req_instance.pet_id}
        end
        
        # binding.pry
    end


end