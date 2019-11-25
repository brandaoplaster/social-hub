class UsersController < ApplicationController
  before_action :set_user, only: [:show, :followings, followers]

  def show
  end

  def followers
  end

  def followings
  end

  def search
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
