class FollowsController < ApplicationController
  before_action :set_user

  def create
    respond_to do |format|
      if current_user.follow(@user)
        format.json { render @user, status: :created }
        format.html { redirect_to :back, notice: 'User follows with success' }
      else
        format.json { render json: nil, status: :unprocessable_entity }
        format.html { redirect_to :back }
      end
    end
  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
