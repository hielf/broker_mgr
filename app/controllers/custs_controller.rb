class CustsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate, :only => [:index, :show, :edit, :update]
  
  def index
    @custs = Cust.order("name").paginate(:page => params[:page]).per_page(20)
    @department = params[:department]
    @broker = Broker.find_by_user_id(current_user.id)
    @custs_grid = initialize_grid(Cust, 
              :conditions => {:id => @broker.custs.map{|cust| [cust.id]}}, 
              :include => [:branch, :custbrokerrels],
              :name => 'custs',
              :enable_export_to_csv => true,
              :csv_field_separator => ';',
              :csv_file_name => '导出',
              :per_page => 20)
    @title = "我的客户"
    export_grid_if_requested('custs' => 'grid')
  end

  def show
    @cust  = Cust.find(params[:id])
    @title = @cust.name
  end
end
