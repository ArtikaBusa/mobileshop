class RepliesController < ApplicationController
  before_action :set_user
  before_action :set_comment
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # GET user/comments/1/replies
  def index
    @replies = @comment.replies
  end

  # GET user/comments/1/replies/1
  def show
  end

  # GET user/comments/1/replies/new
  def new
    @reply = @comment.replies.build
  end

  # GET user/comments/1/replies/1/edit
  def edit
  end

  # POST user/comments/1/replies
  def create
    @reply = @comment.replies.build(reply_params)

    if @reply.save
      redirect_to([@user, @comment, @reply], notice: 'Reply was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT user/comments/1/replies/1
  def update
    if @reply.update_attributes(reply_params)
      redirect_to([@user, @comment, @reply], notice: 'Reply was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE user/comments/1/replies/1
  def destroy
    @reply.destroy

    redirect_to user_comment_replies_url(@user)
  end

  private
    def set_user
      @user = User.find_by_id(params[:user_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @user.comments.find_by_id(params[:comment_id])
    end

    def set_reply
      @reply = @comment.replies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reply_params
      params.require(:reply).permit(:body)
    end
end
