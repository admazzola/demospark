class PartdetailController < ApplicationController
  
  
  def partinfo
    code = params['id'];
    
    part = Partdetail.where(barcode: code).first
    product = Productlibrary.find(part.catalog_id)
    
    checkouts = Checkout.where(:part_id => part.id, :actual_time_in => nil).first
    checkedout = checkouts != nil
    
    render json: [product.catalog_number,product.description,checkedout]
    
  end
  
  
  
  
  
  
  
  
end
