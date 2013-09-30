class WorkflowexesController < ApplicationController;
  include Wicked::Wizard
  prepend_before_filter :set_steps
  
  def new
    @workflowexe = Workflowexe.new
    @workflowexe.build_custservvisit
    @title = "新建"
  end
  
  def show
    @title = "流程步骤"
    @workflowexe = Workflowexe.find(params[:workflowexe_id])
    
    render_wizard
  end
  
  def create
    @workflowexe = Workflowexe.new(params[:workflowexe])
    @custservvisit.status = get_dict("TaskBase.taskStatus",0).id
    if @workflowexe.save
      redirect_to root_path, :flash => { :success => "客户拜访任务已下达"}
    else  
      @title = "客户拜访任务"
      render 'new'
    end
  end
  
  def update
    
  end
  
  private
  def set_steps
    if params[:flow] == "营销客户拜访"
      self.steps = [:cust_serv_set, :cust_serv_action]
    elsif params[:flow] == "facebook"
      self.steps = [:ask_facebook, :ask_email]
    end
  end
end
