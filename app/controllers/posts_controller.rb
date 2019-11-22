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
    @post.destroy

    respond_to do |format|
      format.json { head :no_content }
      format.html { redirect_to posts_path, notice: 'Post was successfully destroyed' }
    end
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
