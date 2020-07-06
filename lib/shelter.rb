class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :families, through: :pets
end