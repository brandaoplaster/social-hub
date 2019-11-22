class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: [:show, :edit, update, :destroy]

  def index
    @user = current_user
    @post = current_user.posts.map { |post| post }
    current_user.all_following.each { |user| user.posts.each { |post| post << post } }
    @posts = posts.sort_by &:created_at
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:body).merge(user: current_user)
  end
end
