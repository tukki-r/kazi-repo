class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reports = @user.reports
  end

end
