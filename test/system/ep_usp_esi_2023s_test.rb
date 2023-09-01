require "application_system_test_case"

class EpUspEsi2023sTest < ApplicationSystemTestCase
  setup do
    @ep_usp_esi_2023 = ep_usp_esi_2023s(:one)
  end

  test "visiting the index" do
    visit ep_usp_esi_2023s_url
    assert_selector "h1", text: "Ep usp esi 2023s"
  end

  test "should create ep usp esi 2023" do
    visit ep_usp_esi_2023s_url
    click_on "New ep usp esi 2023"

    fill_in "Post", with: @ep_usp_esi_2023.Post
    fill_in "Descricao", with: @ep_usp_esi_2023.descricao
    fill_in "Titulo", with: @ep_usp_esi_2023.titulo
    click_on "Create Ep usp esi 2023"

    assert_text "Ep usp esi 2023 was successfully created"
    click_on "Back"
  end

  test "should update Ep usp esi 2023" do
    visit ep_usp_esi_2023_url(@ep_usp_esi_2023)
    click_on "Edit this ep usp esi 2023", match: :first

    fill_in "Post", with: @ep_usp_esi_2023.Post
    fill_in "Descricao", with: @ep_usp_esi_2023.descricao
    fill_in "Titulo", with: @ep_usp_esi_2023.titulo
    click_on "Update Ep usp esi 2023"

    assert_text "Ep usp esi 2023 was successfully updated"
    click_on "Back"
  end

  test "should destroy Ep usp esi 2023" do
    visit ep_usp_esi_2023_url(@ep_usp_esi_2023)
    click_on "Destroy this ep usp esi 2023", match: :first

    assert_text "Ep usp esi 2023 was successfully destroyed"
  end
end
