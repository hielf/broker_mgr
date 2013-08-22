class Custservvisit < ActiveRecord::Base
  attr_accessor   :capital_account
  attr_accessible :assit_user_id, :attchment_file, :cust_id, :location, :memo, :plan_date, :status,
                  :user_id, :visit_content, :visit_date, :workflowexe_id, :capital_account, :cust_name, 
                  :plan_location
                  
  belongs_to :workflowexe
end
# == Schema Information
#
# Table name: custservvisits
#
#  id             :integer(38)     not null, primary key
#  workflowexe_id :integer(38)
#  cust_id        :integer(38)
#  cust_name      :string(255)
#  plan_location  :string(255)
#  plan_date      :datetime
#  visit_date     :datetime
#  visit_location :string(255)
#  attchment_file :string(255)
#  user_id        :integer(38)
#  assit_user_id  :integer(38)
#  status         :integer(38)
#  visit_content  :string(255)
#  memo           :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

