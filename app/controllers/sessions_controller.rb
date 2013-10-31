# encoding: utf-8
class SessionsController < ApplicationController
  def new
    @title = "登录"
  end
 
  def create
    user = User.authenticate(params[:session][:usercode],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "用户名/密码错误"
      @title = "登录"
      render 'new'
    else
      sign_in user
      @session = Session.new({:user_id => user.id, :login_type => 1})
      @session.save
      if (signed_in?) && (can? :access_user_first_page, :all)
        redirect_to brokers_path
      # elsif (signed_in?) && (can? :access_broker_first_page, :all)
      #   redirect_to root_path
      else
      redirect_back_or root_path #user #friendly redirect
      end
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
