require "application_system_test_case"

class HerdsTest < ApplicationSystemTestCase
  setup do
    @herd = herds(:one)
  end

  test "visiting the index" do
    visit herds_url
    assert_selector "h1", text: "Herds"
  end

  test "creating a Herd" do
    visit herds_url
    click_on "New Herd"

    fill_in "Desc", with: @herd.desc
    fill_in "Name", with: @herd.name
    click_on "Create Herd"

    assert_text "Herd was successfully created"
    click_on "Back"
  end

  test "updating a Herd" do
    visit herds_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @herd.desc
    fill_in "Name", with: @herd.name
    click_on "Update Herd"

    assert_text "Herd was successfully updated"
    click_on "Back"
  end

  test "destroying a Herd" do
    visit herds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Herd was successfully destroyed"
  end
end
