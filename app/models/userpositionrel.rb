class Userpositionrel < ActiveRecord::Base
  attr_accessible :expiredate, :positionid, :userid
  
  belongs_to :position, :class_name => "Userposition", :foreign_key => "positionid"
  belongs_to :user, :class_name => "User", :foreign_key => "userid"
  
  validates :userid, :presence => true
  validates :positionid, :presence => true
end
