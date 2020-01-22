class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reports = @user.reports.order("created_at DESC").page(params[:page]).per(5)
  end

end
