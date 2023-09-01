require "test_helper"

class EpUspEsi2023sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ep_usp_esi_2023 = ep_usp_esi_2023s(:one)
  end

  test "should get index" do
    get ep_usp_esi_2023s_url
    assert_response :success
  end

  test "should get new" do
    get new_ep_usp_esi_2023_url
    assert_response :success
  end

  test "should create ep_usp_esi_2023" do
    assert_difference("EpUspEsi2023.count") do
      post ep_usp_esi_2023s_url, params: { ep_usp_esi_2023: { Post: @ep_usp_esi_2023.Post, descricao: @ep_usp_esi_2023.descricao, titulo: @ep_usp_esi_2023.titulo } }
    end

    assert_redirected_to ep_usp_esi_2023_url(EpUspEsi2023.last)
  end

  test "should show ep_usp_esi_2023" do
    get ep_usp_esi_2023_url(@ep_usp_esi_2023)
    assert_response :success
  end

  test "should get edit" do
    get edit_ep_usp_esi_2023_url(@ep_usp_esi_2023)
    assert_response :success
  end

  test "should update ep_usp_esi_2023" do
    patch ep_usp_esi_2023_url(@ep_usp_esi_2023), params: { ep_usp_esi_2023: { Post: @ep_usp_esi_2023.Post, descricao: @ep_usp_esi_2023.descricao, titulo: @ep_usp_esi_2023.titulo } }
    assert_redirected_to ep_usp_esi_2023_url(@ep_usp_esi_2023)
  end

  test "should destroy ep_usp_esi_2023" do
    assert_difference("EpUspEsi2023.count", -1) do
      delete ep_usp_esi_2023_url(@ep_usp_esi_2023)
    end

    assert_redirected_to ep_usp_esi_2023s_url
  end
end
