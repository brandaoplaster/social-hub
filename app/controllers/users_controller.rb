class UsersController < ApplicationController
  before_action :set_user, only: [:show, :followings, followers]

  def show
  end

  def followers
  end

  def followings
  end

  def search
    @user = current_user
    @query = User.ransack(params[:id])
    @users = @query.result(distinct: true)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
