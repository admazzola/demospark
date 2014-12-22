class CustomerController < ApplicationController
  
  
   def destroy
    
   Customer.find(params['id']).destroy
    
    redirect_to '/customer/', notice: 'deleted customer'
  end
  
  
  
end
