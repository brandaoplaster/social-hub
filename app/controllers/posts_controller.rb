class PostsController < ApplicationController
  def index
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
