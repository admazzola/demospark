class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.integer :companyname
      t.integer :address

      t.timestamps
    end
  end
end
