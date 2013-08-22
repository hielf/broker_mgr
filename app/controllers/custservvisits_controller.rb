class CustservvisitsController < ApplicationController
  before_filter :authenticate
  
  def new
    @custservvisit  = Custservvisit.new
    @title = "客户拜访任务"
  end
  
  def create
    @custservvisit = Custservvisit.new(params[:custservvisit])
    if @custservvisit.save
      redirect_to root_path, :flash => { :success => "客户拜访任务已下达"}
    else  
      @title = "客户拜访任务"
      render 'new'
    end
  end

  def edit
    @custservvisit  = Custservvisit.find(params[:id])
    @title = "客户拜访任务"
  end
  
  def update
    @custservvisit  = Custservvisit.find(params[:id])
    if @custservvisit.update_attributes(params[:custservvisit])
      redirect_to @custservvisit, :flash => { :success => "客户拜访任务提交成功" }
    else  
      @title = "客户拜访任务"
      render 'edit'
    end 
  end
    
  def destroy
    Custservvisit.find(params[:id]).destroy
    redirect_to root_path, :flash => { :success => "客户拜访任务已取消" }
  end
end
