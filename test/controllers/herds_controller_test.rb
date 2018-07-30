require 'test_helper'

class HerdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @herd = herds(:one)
  end

  test "should get index" do
    get herds_url
    assert_response :success
  end

  test "should get new" do
    get new_herd_url
    assert_response :success
  end

  test "should create herd" do
    assert_difference('Herd.count') do
      post herds_url, params: { herd: { desc: @herd.desc, name: @herd.name } }
    end

    assert_redirected_to herd_url(Herd.last)
  end

  test "should show herd" do
    get herd_url(@herd)
    assert_response :success
  end

  test "should get edit" do
    get edit_herd_url(@herd)
    assert_response :success
  end

  test "should update herd" do
    patch herd_url(@herd), params: { herd: { desc: @herd.desc, name: @herd.name } }
    assert_redirected_to herd_url(@herd)
  end

  test "should destroy herd" do
    assert_difference('Herd.count', -1) do
      delete herd_url(@herd)
    end

    assert_redirected_to herds_url
  end
end
