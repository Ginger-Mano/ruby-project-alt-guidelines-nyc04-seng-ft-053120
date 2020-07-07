class Interface
    attr_accessor :prompt, :family, :shelter

    def initialize
        @prompt = TTY::Prompt.new
    end

    def greet
        puts "Welcome to Be Best for Pets!"
    end

    def choose_shelter_or_family
        answer = prompt.select("Are you a family or a shelter?", [
            "Family",
            "Shelter"
        ])

        if answer == "Family"
            Family.login_or_register
        elsif answer == "Shelter"
            Shelter.login_or_register
        end
    end

end