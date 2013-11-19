# encoding: utf-8
class Session < ActiveRecord::Base
  attr_accessor :usercode, :password
  attr_accessible :login_type, :user_id, :created_at
  
  belongs_to :user
end
# == Schema Information
#
# Table name: sessions
#
#  id         :integer(38)     not null, primary key
#  user_id    :integer(38)
#  login_type :integer(38)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

