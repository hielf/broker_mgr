class WorkflowhisesController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate
  
  def index
    # @workflowunderways = Workflowunderway.accessible_by(current_ability)
    @title = "待办列表"
    @workflowhis = Workflowhis.order("code").paginate(:page => params[:page]).per_page(20)
    # @department = params[:department]
    @workflowhis_grid = initialize_grid(Workflowhis, 
              :conditions => {:user_id => current_user.id}, 
              :include => [:workflow],
              :name => 'workflowhis',
              # :enable_export_to_csv => true,
              :csv_field_separator => ';',
              :csv_file_name => '导出',
              :per_page => 20)
    # export_grid_if_requested('workflowunderways' => 'grid')
  end
end
