class GroupUsersController < ApplicationController

  def create
    group_user=current_user.group_users.new(params[:group_id])
    group_user.save
    redirect_to request.referer
  end

  def destroy
    group_user=current_user.group_users.find_by(params[:group_id])
    group_user.destroy
    redirect_to request.referer
  end
end
