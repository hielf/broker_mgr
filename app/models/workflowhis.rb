class Workflowhis < ActiveRecord::Base
  attr_accessible :content, :flowid, :remark
end
# == Schema Information
#
# Table name: workflowhis
#
#  id         :integer(38)     not null, primary key
#  flowid     :integer(38)
#  content    :string(255)
#  remark     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

