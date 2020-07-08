class Interface
    attr_accessor :prompt, :shelter

    def initialize
        @prompt = TTY::Prompt.new
    end

    def greet
        puts "Welcome to Be Best for Pets!"
    end

    def choose_login_or_register
        answer = prompt.select("Would you like to Log In or Register?", [
            "Log In",
            "Register"
        ])

        if answer == "Log In"
            Shelter.logging_in
        elsif answer == "Register"
            Shelter.register
        end
    end

    def main_menu
        puts "Welcome to the app, #{shelter.name}!"
        puts "You have #{shelter.pets.count} pets!"
        pet_names = shelter.pets.map do |pet_instance|
            pet_instance.name
        end
        pet_name = prompt.select("Choose a Pet", pet_names)
    end

end