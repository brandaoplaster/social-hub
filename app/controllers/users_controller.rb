class UsersController < ApplicationController
  before_action :set_user, only: [:show, :followings, :followers]

  def show
    @posts = @user.posts
    @following = @user.following_users.limit(5)
    @followers = @user.followers_by_type('user').limit(5)
  end

  def followers
    @following = @user.following_users
  end

  def followings
    @followers = @user.followers_by_type('User')
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
