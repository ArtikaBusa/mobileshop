require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @comment = comments(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, params: { user_id: @user, comment: @comment.attributes }
    end

    assert_redirected_to user_comment_path(@user, Comment.last)
  end

  test "should show comment" do
    get :show, params: { user_id: @user, id: @comment }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @comment }
    assert_response :success
  end

  test "should update comment" do
    put :update, params: { user_id: @user, id: @comment, comment: @comment.attributes }
    assert_redirected_to user_comment_path(@user, Comment.last)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, params: { user_id: @user, id: @comment }
    end

    assert_redirected_to user_comments_path(@user)
  end
end
