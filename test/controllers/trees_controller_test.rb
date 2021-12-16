require 'test_helper'

class TreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tree = trees(:one)
  end

  test "should get index" do
    get trees_url
    assert_response :success
  end

  test "should get new" do
    get new_tree_url
    assert_response :success
  end

  test "should create tree" do
    assert_difference('Tree.count') do
      post trees_url, params: { tree: { caracteristica: @tree.caracteristica, dueño: @tree.dueño, latitud: @tree.latitud, longitud: @tree.longitud } }
    end

    assert_redirected_to tree_url(Tree.last)
  end

  test "should show tree" do
    get tree_url(@tree)
    assert_response :success
  end

  test "should get edit" do
    get edit_tree_url(@tree)
    assert_response :success
  end

  test "should update tree" do
    patch tree_url(@tree), params: { tree: { caracteristica: @tree.caracteristica, dueño: @tree.dueño, latitud: @tree.latitud, longitud: @tree.longitud } }
    assert_redirected_to tree_url(@tree)
  end

  test "should destroy tree" do
    assert_difference('Tree.count', -1) do
      delete tree_url(@tree)
    end

    assert_redirected_to trees_url
  end
end
