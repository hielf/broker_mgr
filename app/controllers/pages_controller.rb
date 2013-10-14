# encoding: utf-8
class PagesController < ApplicationController
  def home
    @title = "首页"
    if signed_in?
      @title = "首页"
      @broker = Broker.find_by_user_id(current_user.id) unless Broker.find_by_user_id(current_user.id).nil?
      @workflowunderways = Workflowunderway.where(:user_id => current_user.id).limit(5).order('created_at desc')
    end
    
  end

  def contact
    @title = "联系"
  end
  
  def about
    @title = "关于"
  end
  
  def help
    @title = "帮助"
  end
  
  def todo
    @title = "代办事项"
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
