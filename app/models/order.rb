require 'securerandom'

class Order < ApplicationRecord
    before_create :order_track_id
    after_initialize :default_values

    enum type_of_service: {
        speed_post: '1',
        regular: '2'
    }

    enum payment_mode: {
        cod: '1',
        pre_paid: '2'
    }

    enum status: {
        sent: '0',
        transit: '1',
        delivered: '2'
      }

      private

        def order_track_id
          
        self.order_track_id = SecureRandom.random_number(1_000_000)  
        # begin
        # end while Order.where(order_track_id: self.order_track_id).exists?

        end

        def default_values
            self.status ||= "0"
          end

end
