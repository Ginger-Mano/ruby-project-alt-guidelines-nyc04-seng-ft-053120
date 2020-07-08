class Interface
    attr_accessor :prompt, :shelter

    def initialize
        @prompt = TTY::Prompt.new
    end

    def greet
        puts "Welcome to Be Best for Pets!"
    end

    def choose_login_or_register
        # answer = prompt.select("Would you like to Log In or Register?", [
        #     "Log In",
        #     "Register"
        # ])

        # if answer == "Log In"
        #     Shelter.logging_in
        # elsif answer == "Register"
        #     Shelter.register
        # end

        prompt.select("Would you like to Log In or Register?") do |menu|
            menu.choice "Log In", -> {Shelter.logging_in}
            menu.choice "Register", -> {Shelter.register}
        end
    end

    def main_menu
        # system "clear"
        puts "Welcome to the app, #{shelter.name}!"
        # puts "You have #{shelter.pets.count} pets!"
        prompt.select("Let's change some lives - What would you like to do?") do |menu|
            menu.choice "See all pets", -> { self.see_all_pets }
            menu.choice "Add a pet", -> { self.add_a_pet }
            menu.choice "Add an Adoption Request", -> { self.add_request }
            menu.choice "Log out", -> {}
        end
    end   
        
    def see_all_pets
        system "clear"
        #sleep(1)
        shelter.display_pets
        main_menu
    end

    def add_a_pet
        system "clear"
        shelter.add_a_pet
        main_menu
    end

    def add_request
        system "clear"
        shelter.add_request
        main_menu
    end

    def main_menu_after_action
        puts "Welcome to the app, #{shelter.name}!"
        prompt.select("Let's change some lives - What would you like to do?") do |menu|
            menu.choice "See all pets", -> { self.see_all_pets }
            menu.choice "Add a pet", -> { self.add_a_pet }
            menu.choice "Delete a pet", -> {}
            menu.choice "Log out", -> {}
        end  
        
    end
       

end