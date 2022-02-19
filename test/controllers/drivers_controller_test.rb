require "test_helper"

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_url
    assert_response :success
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post drivers_url, params: { driver: { driver_car: @driver.driver_car, driver_category: @driver.driver_category, driver_experience: @driver.driver_experience, driver_license: @driver.driver_license, driver_name: @driver.driver_name, driver_organization: @driver.driver_organization, driver_phone: @driver.driver_phone, driver_reg_number: @driver.driver_reg_number, driver_submission: @driver.driver_submission, string: @driver.string } }
    end

    assert_redirected_to driver_url(Driver.last)
  end

  test "should show driver" do
    get driver_url(@driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_url(@driver)
    assert_response :success
  end

  test "should update driver" do
    patch driver_url(@driver), params: { driver: { driver_car: @driver.driver_car, driver_category: @driver.driver_category, driver_experience: @driver.driver_experience, driver_license: @driver.driver_license, driver_name: @driver.driver_name, driver_organization: @driver.driver_organization, driver_phone: @driver.driver_phone, driver_reg_number: @driver.driver_reg_number, driver_submission: @driver.driver_submission, string: @driver.string } }
    assert_redirected_to driver_url(@driver)
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete driver_url(@driver)
    end

    assert_redirected_to drivers_url
  end
end
