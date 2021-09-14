class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_track_id
      t.text :sender_full_name
      t.text :sender_email
      t.text :sender_address
      t.text :sender_mobile
      t.text :sender_pincode
      t.text :receiver_full_name
      t.text :receiver_email
      t.text :receiver_address
      t.text :receiver_mobile
      t.text :receiver_pincode
      t.decimal :parcel_weight
      t.integer :type_of_service
      t.decimal :cost_of_service
      t.integer :payment_mode
      t.integer :status


      t.timestamps
    end
  end
end
