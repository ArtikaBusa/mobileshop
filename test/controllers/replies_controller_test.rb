require 'test_helper'

class RepliesControllerTest < ActionController::TestCase
  setup do
    @user/comment = user/comments(:one)
    @reply = replies(:one)
  end

  test "should get index" do
    get :index, params: { user/comment_id: @user/comment }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user/comment_id: @user/comment }
    assert_response :success
  end

  test "should create reply" do
    assert_difference('Reply.count') do
      post :create, params: { user/comment_id: @user/comment, reply: @reply.attributes }
    end

    assert_redirected_to user/comment_reply_path(@user/comment, Reply.last)
  end

  test "should show reply" do
    get :show, params: { user/comment_id: @user/comment, id: @reply }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user/comment_id: @user/comment, id: @reply }
    assert_response :success
  end

  test "should update reply" do
    put :update, params: { user/comment_id: @user/comment, id: @reply, reply: @reply.attributes }
    assert_redirected_to user/comment_reply_path(@user/comment, Reply.last)
  end

  test "should destroy reply" do
    assert_difference('Reply.count', -1) do
      delete :destroy, params: { user/comment_id: @user/comment, id: @reply }
    end

    assert_redirected_to user/comment_replies_path(@user/comment)
  end
end
