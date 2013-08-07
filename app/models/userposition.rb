class Userposition < ActiveRecord::Base
  attr_accessible :name
  
  has_many :userpositionrels, :dependent => :destroy, 
                              :foreign_key => "positionid"
  has_many :users,            :through => :userpositionrels, 
                              :source => :user     
end
