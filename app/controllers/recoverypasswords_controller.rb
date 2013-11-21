# encoding: utf-8
class RecoverypasswordsController < ApplicationController
	def new
    @title = "忘记密码"
  end
 
  def create
  	broker = Broker.find_by_user_code_and_certificate_num(params[:recoverypassword][:usercode],
                             															params[:recoverypassword][:certificate_num])
    if broker.nil?
      @title = "忘记密码"
      redirect_to root_path, :flash => { :error => "输入不正确，请重新输入" }
    else
      user = broker.user
      user.update_attributes(:name => user.name, 
      											 :usercode => user.usercode, 
      											 :password => "888888", 
      											 :password_confirmation => "888888")
      redirect_to root_path, :flash => { :success => "密码初始化成功" }
    end
  end
end