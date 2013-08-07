class Workflow < ActiveRecord::Base
  attr_accessible :code, :name, :steps
  
  has_many :flowpositionrels, :dependent => :destroy, 
                              :foreign_key => "flowid"
end
