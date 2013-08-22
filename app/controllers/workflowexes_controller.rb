class WorkflowexesController < ApplicationController;
  include Wicked::Wizard
  prepend_before_filter :set_steps
  
  private
  def set_steps
    if params[:flow] == "twitter"
      self.steps = [:ask_twitter, :ask_email]
    elsif params[:flow] == "facebook"
      self.steps = [:ask_facebook, :ask_email]
    end
  end
end
