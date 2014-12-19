class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  
  
  private
def not_authenticated
  redirect_to login_path, alert: "Please login first"
end



include ActionView::Helpers::NumberHelper

  def sentencify(input)
    
   return input.gsub(/([a-z])((?:[^.?!]|\.(?=[a-z]))*)/i) { $1.upcase + $2.rstrip }
    
  end
  
  def capFirstLetter(word)
    
    word[0] = word[0].upcase
    
    return word
    
  end
  
  
  def format_as_company_name(input)
    
    return input.split(" ").map{|word| capFirstLetter(word)}.join(" ")
    
  end


  
  
  
  
  
  
  
  
  
  
  


end
