class Brokerproductrel < ActiveRecord::Base
  attr_accessible :broker_id, :product_id
  
  belongs_to :broker
  belongs_to :product
  
  validates :broker_id, :presence => true
  validates :product_id, :presence => true
end
