class WorkflowStepsController < ApplicationController
  include Wicked::Wizard
  # load_and_authorize_resource
  before_filter :authenticate
  # prepend_before_filter :set_steps
  steps :custserv_one, :custserv_two
  
  def show
    @title = "客户拜访任务"
    @workflowunderway = Workflowunderway.find(params[:workflowunderway_id])
    @workflow = @workflowunderway.workflow
    
    render_wizard
  end
end
