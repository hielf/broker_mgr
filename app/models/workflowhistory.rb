class Workflowhistory < ActiveRecord::Base
  attr_accessible :content, :workflow_id, :remark, :user_id, :id
  
  belongs_to :workflow
end
# == Schema Information
#
# Table name: workflowhistories
#
#  id          :integer(38)     not null, primary key
#  workflow_id :integer(38)
#  user_id     :integer(38)
#  content     :string(255)
#  remark      :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

