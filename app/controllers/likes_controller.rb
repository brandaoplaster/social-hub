class LikesController < ApplicationController
  before_action :set_post
  before_action :set_event, only: [:destroy]
  load_and_authorize_resource

  def create
    @like = Like.new(user: current_user, post: @post)

    respond_to do |format|
      if @like.save
        format.json { render json: @like }
        format.html { redirect_to :back }
      else
        format.json { render json: @like.errors, status: :unprocessable_entity }
        format.html { redirect_to :back }
      end
    end
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
