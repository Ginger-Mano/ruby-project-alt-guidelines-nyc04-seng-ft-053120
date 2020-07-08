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
end