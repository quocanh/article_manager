require 'test_helper'

class WritingsControllerTest < ActionController::TestCase
  setup do
    @writing = writings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:writings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create writing" do
    assert_difference('Writing.count') do
      post :create, writing: { article_id: @writing.article_id, author_id: @writing.author_id, created: @writing.created, order: @writing.order }
    end

    assert_redirected_to writing_path(assigns(:writing))
  end

  test "should show writing" do
    get :show, id: @writing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @writing
    assert_response :success
  end

  test "should update writing" do
    patch :update, id: @writing, writing: { article_id: @writing.article_id, author_id: @writing.author_id, created: @writing.created, order: @writing.order }
    assert_redirected_to writing_path(assigns(:writing))
  end

  test "should destroy writing" do
    assert_difference('Writing.count', -1) do
      delete :destroy, id: @writing
    end

    assert_redirected_to writings_path
  end
end
