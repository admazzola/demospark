class Partdetail < ActiveRecord::Base
  # attr_accessible :title, :body
  
  def checked_out    
    #Checkout.find(:part_id => :id).first != nil   
    
    Checkout.where(:part_id => part.id, :actual_time_in => nil).first != nil
    
  end
  
end
