class IssuesController < ApplicationController
  before_action :set_issue, only: [:show]

  def new
    @devices = Device.order(release_date: :desc)
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(permitted_params.issue)
    if @issue.save
      flash[:success] = t('flash.issue.success.create')
      redirect_to issue_path(@issue)
    else
      flash.now[:error] = t('flash.issue.error.create')
      render :new
    end
  end

  protected
  def set_issue
    @issue = Issue.find_by_token params[:id]
  end
end
