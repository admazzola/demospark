class Customer < ActiveRecord::Base
   attr_accessible :name, :company_id, :phone_number, :email

    def company

      return Company.where(id: company_id).first



    end


    def noLastName

      if name.strip.split(" ").length <= 1
          return true
      end

      return false

    end

    def getAutoCompleteName
      if noLastName and company != nil
          return name + " @ " + company.name
      end

      return name

    end

end
