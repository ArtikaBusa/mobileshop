class CommentsController < ApplicationController
  before_action :set_user
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET users/1/comments
  def index
    @comments = @user.comments
  end

  # GET users/1/comments/1
  def show
  end

  # GET users/1/comments/new
  def new
    @comment = @user.comments.build
  end

  # GET users/1/comments/1/edit
  def edit
  end

  # POST users/1/comments
  def create
    @comment = @user.comments.build(comment_params)

    if @comment.save
      redirect_to([@comment.user, @comment], notice: 'Comment was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/comments/1
  def update
    if @comment.update_attributes(comment_params)
      redirect_to([@comment.user, @comment], notice: 'Comment was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/comments/1
  def destroy
    @comment.destroy

    redirect_to user_comments_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_comment
      @comment = @user.comments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:body, :user_id)
    end
end
