require "application_system_test_case"

class WaybillsTest < ApplicationSystemTestCase
  setup do
    @waybill = waybills(:one)
  end

  test "visiting the index" do
    visit waybills_url
    assert_selector "h1", text: "Waybills"
  end

  test "creating a Waybill" do
    visit waybills_url
    click_on "New Waybill"

    fill_in "Driver", with: @waybill.driver_id
    fill_in "Mileage at evening", with: @waybill.mileage_at_evening
    fill_in "Mileage at morning", with: @waybill.mileage_at_morning
    fill_in "Mileage daily", with: @waybill.mileage_daily
    fill_in "Waybill date", with: @waybill.waybill_date
    click_on "Create Waybill"

    assert_text "Waybill was successfully created"
    click_on "Back"
  end

  test "updating a Waybill" do
    visit waybills_url
    click_on "Edit", match: :first

    fill_in "Driver", with: @waybill.driver_id
    fill_in "Mileage at evening", with: @waybill.mileage_at_evening
    fill_in "Mileage at morning", with: @waybill.mileage_at_morning
    fill_in "Mileage daily", with: @waybill.mileage_daily
    fill_in "Waybill date", with: @waybill.waybill_date
    click_on "Update Waybill"

    assert_text "Waybill was successfully updated"
    click_on "Back"
  end

  test "destroying a Waybill" do
    visit waybills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Waybill was successfully destroyed"
  end
end
