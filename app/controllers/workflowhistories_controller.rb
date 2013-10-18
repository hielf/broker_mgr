class WorkflowhistoriesController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate
  
  def index
    @title = "已办列表"
    @workflowhistories = Workflowhistory.order("code").paginate(:page => params[:page]).per_page(20)
    # @department = params[:department]
    @workflowhistories_grid = initialize_grid(Workflowhistory, 
              :conditions => {:user_id => current_user.id}, 
              :include => [:workflow],
              :name => 'workflowhistory',
              # :enable_export_to_csv => true,
              :csv_field_separator => ';',
              :csv_file_name => '导出',
              :per_page => 20)
    # export_grid_if_requested('workflowunderways' => 'grid')
  end
  
  def show
    @title = "流程步骤"
    @workflowhistory = Workflowhistory.find(params[:id])
    @workflow = @workflowhistory.workflow
  end
end
