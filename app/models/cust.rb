class Cust < ActiveRecord::Base
  attr_accessible :address, :assessment_date, :branch_id, :capital_account, :capital_account_type, :close_date,
                  :cust_name, :identification_number, :identification_type, :mobile, :open_date, :phone, :status,
                  :valid_date, :valid_date_crop, :zip_code
  
  has_many :custbrokerrels
end
