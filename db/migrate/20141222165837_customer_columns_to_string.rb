class CustomerColumnsToString < ActiveRecord::Migration
  def change
    remove_column :customers, :companyname
    remove_column :customers, :address
    
    add_column :customers, :companyname, :string    
    add_column :customers, :address, :string
  end


end
