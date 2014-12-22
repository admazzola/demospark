class ProductlibraryController < ApplicationController
  
  
  def destroy
    
   Productlibrary.find(params['id']).destroy
    
    redirect_to '/productlibrary/', notice: 'deleted product'
  end
  
  
  
  
  
  
  
  
end
