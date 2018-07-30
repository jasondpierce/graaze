require "application_system_test_case"

class PasturesTest < ApplicationSystemTestCase
  setup do
    @pasture = pastures(:one)
  end

  test "visiting the index" do
    visit pastures_url
    assert_selector "h1", text: "Pastures"
  end

  test "creating a Pasture" do
    visit pastures_url
    click_on "New Pasture"

    fill_in "Available Forage", with: @pasture.available_forage
    fill_in "Date Grazed", with: @pasture.date_grazed
    fill_in "Size", with: @pasture.size
    click_on "Create Pasture"

    assert_text "Pasture was successfully created"
    click_on "Back"
  end

  test "updating a Pasture" do
    visit pastures_url
    click_on "Edit", match: :first

    fill_in "Available Forage", with: @pasture.available_forage
    fill_in "Date Grazed", with: @pasture.date_grazed
    fill_in "Size", with: @pasture.size
    click_on "Update Pasture"

    assert_text "Pasture was successfully updated"
    click_on "Back"
  end

  test "destroying a Pasture" do
    visit pastures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pasture was successfully destroyed"
  end
end
