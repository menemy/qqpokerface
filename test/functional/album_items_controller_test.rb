require 'test_helper'

class AlbumItemsControllerTest < ActionController::TestCase
  setup do
    @album_item = album_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:album_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album_item" do
    assert_difference('AlbumItem.count') do
      post :create, album_item: @album_item.attributes
    end

    assert_redirected_to album_item_path(assigns(:album_item))
  end

  test "should show album_item" do
    get :show, id: @album_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album_item
    assert_response :success
  end

  test "should update album_item" do
    put :update, id: @album_item, album_item: @album_item.attributes
    assert_redirected_to album_item_path(assigns(:album_item))
  end

  test "should destroy album_item" do
    assert_difference('AlbumItem.count', -1) do
      delete :destroy, id: @album_item
    end

    assert_redirected_to album_items_path
  end
end
