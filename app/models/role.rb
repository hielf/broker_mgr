class Role < ActiveRecord::Base
  attr_accessible :memo, :role_name, :status
  
  has_many :assignments
  has_many :users, :through => :assignments
  
  validates :role_name,  :presence   => true,
                         :length     => { :maximum => 20 }
end
# == Schema Information
#
# Table name: roles
#
#  id         :integer(38)     not null, primary key
#  role_name  :string(255)
#  status     :integer(38)
#  memo       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

