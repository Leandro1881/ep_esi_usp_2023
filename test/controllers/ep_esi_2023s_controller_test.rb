require "test_helper"

class EpEsi2023sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ep_esi_2023 = ep_esi_2023s(:one)
  end

  test "should get index" do
    get ep_esi_2023s_url
    assert_response :success
  end

  test "should get new" do
    get new_ep_esi_2023_url
    assert_response :success
  end

  test "should create ep_esi_2023" do
    assert_difference("EpEsi2023.count") do
      post ep_esi_2023s_url, params: { ep_esi_2023: {  } }
    end

    assert_redirected_to ep_esi_2023_url(EpEsi2023.last)
  end

  test "should show ep_esi_2023" do
    get ep_esi_2023_url(@ep_esi_2023)
    assert_response :success
  end

  test "should get edit" do
    get edit_ep_esi_2023_url(@ep_esi_2023)
    assert_response :success
  end

  test "should update ep_esi_2023" do
    patch ep_esi_2023_url(@ep_esi_2023), params: { ep_esi_2023: {  } }
    assert_redirected_to ep_esi_2023_url(@ep_esi_2023)
  end

  test "should destroy ep_esi_2023" do
    assert_difference("EpEsi2023.count", -1) do
      delete ep_esi_2023_url(@ep_esi_2023)
    end

    assert_redirected_to ep_esi_2023s_url
  end
end
