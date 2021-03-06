require 'open-uri'

module Mollie
  module API
    module Resource
      class Customers
        class Payments < Base
          @customer_id = nil

          def getResourceObject
            Mollie::API::Object::Payment
          end

          def getResourceName
            customer_id = URI::encode(@customer_id)
            "customers/#{customer_id}/payments"
          end

          def with(customer)
            @customer_id = customer.id
            self
          end
        end
      end
    end
  end
end
