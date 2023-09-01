require "application_system_test_case"

class EpEsi2023sTest < ApplicationSystemTestCase
  setup do
    @ep_esi_2023 = ep_esi_2023s(:one)
  end

  test "visiting the index" do
    visit ep_esi_2023s_url
    assert_selector "h1", text: "Ep esi 2023s"
  end

  test "should create ep esi 2023" do
    visit ep_esi_2023s_url
    click_on "New ep esi 2023"

    click_on "Create Ep esi 2023"

    assert_text "Ep esi 2023 was successfully created"
    click_on "Back"
  end

  test "should update Ep esi 2023" do
    visit ep_esi_2023_url(@ep_esi_2023)
    click_on "Edit this ep esi 2023", match: :first

    click_on "Update Ep esi 2023"

    assert_text "Ep esi 2023 was successfully updated"
    click_on "Back"
  end

  test "should destroy Ep esi 2023" do
    visit ep_esi_2023_url(@ep_esi_2023)
    click_on "Destroy this ep esi 2023", match: :first

    assert_text "Ep esi 2023 was successfully destroyed"
  end
end
