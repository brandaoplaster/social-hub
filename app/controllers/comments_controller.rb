class CommentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_comment, only: [:destryo, :update]
  before_action :set_post, only: [:create]

  def create
  end

  def destroy
  end

  def update
  end

  private

  def set_post
    @post = Post.find(params[:comment][:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment).merge(user: current_user)
  end
end
