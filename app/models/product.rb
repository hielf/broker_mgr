class Product < ActiveRecord::Base
  attr_accessible :begin_limit, :capital_account, :contract, :instruction, :linkman, :manage_begin_date,
                  :manage_end_date, :manager, :name, :phone, :product_code, :product_income, :product_structure,
                  :product_type, :returns_ratio, :risk_level, :sale_begin_date, :sale_end_date, :sale_limit,
                  :sales_bonus, :status
                  
  has_many        :brokerproductrels
end
# == Schema Information
#
# Table name: products
#
#  id                :integer(38)     not null, primary key
#  product_code      :string(255)
#  name              :string(255)
#  manager           :string(255)
#  product_type      :integer(38)
#  risk_level        :integer(38)
#  sale_limit        :string(255)
#  returns_ratio     :string(255)
#  sale_begin_date   :datetime
#  sale_end_date     :datetime
#  manage_begin_date :datetime
#  manage_end_date   :datetime
#  product_structure :string(255)
#  begin_limit       :string(255)
#  sales_bonus       :string(255)
#  product_income    :integer(38)
#  status            :integer(38)
#  linkman           :string(255)
#  phone             :string(255)
#  capital_account   :string(255)
#  contract          :string(255)
#  instruction       :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

