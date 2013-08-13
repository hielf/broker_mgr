class Workflow < ActiveRecord::Base
  attr_accessible :code, :name, :steps
  
  has_many :flowpositionrels, :dependent => :destroy, 
                              :foreign_key => "flowid"
end
# == Schema Information
#
# Table name: workflows
#
#  id         :integer(38)     not null, primary key
#  code       :string(255)
#  name       :string(255)
#  steps      :integer(38)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

