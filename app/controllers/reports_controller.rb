class ReportsController < ApplicationController

  def index
    @report = Report.all.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @report = Report.new 
  end

  def create
    Report.create(report_params)
    redirect_to root_path
  end

  private 
    def report_params
      params.require(:report).permit(:checkbox, :image).merge(user_id: current_user.id)
    end
end
