class LikesController < ApplicationController
  before_action :set_post
  before_action :set_event, only: [:destroy]
  laod_and_authorize_resource

  def create
  end

  def destroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_event
    @like = Like.find_by(user: current_user, post: @post)
    @event = @like
  end
end
