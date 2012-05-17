class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @projects = UnfinishedProject.all
    render :template => 'application/index'
  end


  def about
    render :template => 'application/about'
  end


  def privacy_policy
    render :template => 'application/privacy_policy'
  end

  def terms_of_use
    render :template => 'application/terms_of_use'
  end

  def project
    @unfinished_project = UnfinishedProject.find_by_short_name(params[:short_name])
    render :template => 'application/project'
  end
end
