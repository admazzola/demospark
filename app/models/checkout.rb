class Checkout < ActiveRecord::Base
  # attr_accessible :title, :body
  
  def checkedBackIn 
      !actual_time_in.blank?
   end
    
end
