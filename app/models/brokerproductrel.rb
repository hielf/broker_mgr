class Brokerproductrel < ActiveRecord::Base
  attr_accessible :broker_id, :product_id
  
  belongs_to :broker
  belongs_to :product
end
