class Request < ActiveRecord::Base
    belongs_to :family
    belongs_to :pet

    # def update_request
    #     binding.pry
    #     request_names = self.request.map do |req_instance|
    #         # binding.pry
    #         {req_instance.family_name => req_instance.family_id}
    #     end
    # end
end