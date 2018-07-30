require 'test_helper'

class PasturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pasture = pastures(:one)
  end

  test "should get index" do
    get pastures_url
    assert_response :success
  end

  test "should get new" do
    get new_pasture_url
    assert_response :success
  end

  test "should create pasture" do
    assert_difference('Pasture.count') do
      post pastures_url, params: { pasture: { available_forage: @pasture.available_forage, date_grazed: @pasture.date_grazed, size: @pasture.size } }
    end

    assert_redirected_to pasture_url(Pasture.last)
  end

  test "should show pasture" do
    get pasture_url(@pasture)
    assert_response :success
  end

  test "should get edit" do
    get edit_pasture_url(@pasture)
    assert_response :success
  end

  test "should update pasture" do
    patch pasture_url(@pasture), params: { pasture: { available_forage: @pasture.available_forage, date_grazed: @pasture.date_grazed, size: @pasture.size } }
    assert_redirected_to pasture_url(@pasture)
  end

  test "should destroy pasture" do
    assert_difference('Pasture.count', -1) do
      delete pasture_url(@pasture)
    end

    assert_redirected_to pastures_url
  end
end
