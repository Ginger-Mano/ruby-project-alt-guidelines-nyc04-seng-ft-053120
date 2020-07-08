class Pet < ActiveRecord::Base

    belongs_to :shelter
    has_many :requests
    has_many :families, through: :requests

    # def shelter
    #     Shelter.all.find { |shelter_instance| shelter_instance.id == self.shelter_id }
    # end

    # def family
    #     Family.all.find { |family_instance| family_instance.id == self.bff_id }
    # end

    # attr_accessor :name, :breed, :age, :adoption_status, :bff_id, :shelter_id

    # def initialize(name, breed, age, adoption_status, bff_id, shelter_id)
    #     @name = name
    #     @breed = breeds
    #     @age = age
    #     @adoption_status = adoption_status
    #     @bff_id = bff_id
    #     @shelter_id = shelter_id
    # end

    def display_families
        family_names = self.families.map do |family|
            family.name
        end
        if family_names.length > 0
            TTY::Prompt.new.select("Here are the families interested in this pet:", family_names)
        else
            puts "No families are interested in this pet"
        end 
    end

    # def add_a_pet
    #     prompt = TTY::Prompt.new
    #     pet_name = prompt.ask("What is the pet's name?")
        
    #     breed = prompt.ask("What is the breed of this pet?")
    #     age = prompt.ask("How old is the pet?")
    #     description = prompt.ask("How would you describe this pet?")
    #     binding.pry
    #     self.create(
    #         pet_name: name,
    #         breed: breed,
    #         age: age,
    #         adoption_status: "Available",
    #         description: description,
    #         shelter_id: shelter_id
    #     )
    # end

    # def set_shelter_id
    #     self.pets.map do |pet_instance|
    #         {pet_instance.name => shelter_instance.id}
    #     end
    # end
end