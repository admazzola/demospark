class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|

      t.integer :user_checkingout_id
      t.integer :user_contact_id
      t.integer :part_id
      t.integer :customer_id
      t.string :customer_contact_name
      t.string :customer_contact_phone
      t.datetime :time_out
      t.datetime :expected_time_in
      t.datetime :actual_time_in
  
      t.timestamps
    end
  end
end
