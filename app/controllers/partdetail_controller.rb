class PartdetailController < ApplicationController
  
  
  def partinfo
    code = params['id'];
    
    part = Partdetail.where(barcode: code).first
    product = Productlibrary.find(part.catalog_id)
    
    
    render json: [product.catalog_number,product.description]
    
  end
  
  
  
  
  
  
  
  
end
