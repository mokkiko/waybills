require "test_helper"

class WaybillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waybill = waybills(:one)
  end

  test "should get index" do
    get waybills_url
    assert_response :success
  end

  test "should get new" do
    get new_waybill_url
    assert_response :success
  end

  test "should create waybill" do
    assert_difference('Waybill.count') do
      post waybills_url, params: { waybill: { driver_id: @waybill.driver_id, mileage_at_evening: @waybill.mileage_at_evening, mileage_at_morning: @waybill.mileage_at_morning, mileage_daily: @waybill.mileage_daily, waybill_date: @waybill.waybill_date } }
    end

    assert_redirected_to waybill_url(Waybill.last)
  end

  test "should show waybill" do
    get waybill_url(@waybill)
    assert_response :success
  end

  test "should get edit" do
    get edit_waybill_url(@waybill)
    assert_response :success
  end

  test "should update waybill" do
    patch waybill_url(@waybill), params: { waybill: { driver_id: @waybill.driver_id, mileage_at_evening: @waybill.mileage_at_evening, mileage_at_morning: @waybill.mileage_at_morning, mileage_daily: @waybill.mileage_daily, waybill_date: @waybill.waybill_date } }
    assert_redirected_to waybill_url(@waybill)
  end

  test "should destroy waybill" do
    assert_difference('Waybill.count', -1) do
      delete waybill_url(@waybill)
    end

    assert_redirected_to waybills_url
  end
end
