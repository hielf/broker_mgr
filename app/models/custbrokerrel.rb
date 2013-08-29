class Custbrokerrel < ActiveRecord::Base
  attr_accessible :broker_id, :cust_id, :dis_ratio, :rel_date, :rel_status
  
  belongs_to :broker
  belongs_to :cust
end
