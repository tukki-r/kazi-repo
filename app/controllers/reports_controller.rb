class ReportsController < ApplicationController

  def index
    @user = User.all.includes(:reports).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @report = Report.new 
  end

  def create
    Report.create(report_params)
    redirect_to controller: 'users', action: 'show', id:current_user.id
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @report = user.reports.order("created_at DESC").page(params[:page]).per(5)
    @like = Like.new
  end

  private 
    def report_params
      params.require(:report).permit(:checkbox, :image).merge(user_id: current_user.id)
    end
end
