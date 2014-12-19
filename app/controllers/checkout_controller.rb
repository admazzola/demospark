class CheckoutController < ApplicationController
  
  
  def create
    
    checkout = Checkout.new()
    checkout.save
    
    
    redirect_to '/checkout/'
    
    
  end
  
  
  
  
  
  
  
  
  
  
end
