class WorkflowexesController < ApplicationController;
  include Wicked::Wizard
  load_and_authorize_resource
  prepend_before_filter :set_steps
  steps :custserv_1, :custserv_2
  
  def new
    @workflowexe = Workflowexe.new
    @workflowexe.build_custservvisit
    @title = "新建"
  end
  
  def show
    @title = "流程步骤"
    @workflowexe = Workflowexe.find(params[:id])
    # @next_step = 'custserv_2'
    # @current_step = 'custserv_1'
    render_wizard
  end
  
  def create
    @workflowexe = Workflowexe.new(params[:workflowexe])
    # @custservvisit.status = get_dict("TaskBase.taskStatus",0).id
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
      self.steps = [:custserv_1, :custserv_2]
    elsif params[:flow] == "facebook"
      self.steps = [:ask_facebook, :ask_email]
    end
  end
end
