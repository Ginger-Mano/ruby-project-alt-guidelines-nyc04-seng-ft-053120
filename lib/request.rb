class Request < ActiveRecord::Base
    belongs_to :family
    belongs_to :pet
end