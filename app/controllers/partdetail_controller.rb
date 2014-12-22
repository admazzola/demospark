class PartdetailController < ApplicationController
  
    def destroy
    
   Partdetail.find(params['id']).destroy
    
    redirect_to '/partdetail/', notice: 'deleted part'
  end
  
  def partinfo
    code = params['id'];
    
    part = Partdetail.where(barcode: code).first
    product = Productlibrary.find(part.catalog_id)
    
    checkouts = Checkout.where(:part_id => part.id, :actual_time_in => nil).first
    checkedout = checkouts != nil
    
    render json: [product.catalog_number,product.description,checkedout]
    
  end
  
  
  def create
    # , "newpart"=>{"barcode"=>"grdgr", "catalognumber"=>"drgrdg", "description"=>"drgr"}, "action"=>"create", "controller"=>"partdetail"}
    
   
        Productlibrary.all.each do |product|
      if(product.catalog_number)
      product.catalog_number = product.catalog_number.gsub(/[^0-9a-z ]/i, '').upcase
      product.save
      end
      
    end
    
    strippedcatalognumber = params['newpart']['catalognumber'].gsub(/[^0-9a-z ]/i, '')
    
    product = Productlibrary.where(:catalog_number => strippedcatalognumber).first
    if(product == nil)
      product = Productlibrary.new(:catalog_number => strippedcatalognumber,:description => params['newpart']['description'])
      product.save
     end
    
    part = Partdetail.new(:catalog_id => product.id,:barcode => params['newpart']['barcode'],:series => params['newpart']['series'])
    part.save
    
    redirect_to '/partdetail/'
  end
  
  
  
  
  
end
