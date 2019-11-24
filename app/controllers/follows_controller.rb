class FollowsController < ApplicationController
  before_action :set_user

  def create

  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
