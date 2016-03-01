require 'test_helper'

class SystemLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_log = system_logs(:one)
  end

  test "should get index" do
    get system_logs_url
    assert_response :success
  end

  test "should create system_log" do
    assert_difference('SystemLog.count') do
      post system_logs_url, params: { system_log: { message: @system_log.message, type: @system_log.type } }
    end

    assert_response 201
  end

  test "should show system_log" do
    get system_log_url(@system_log)
    assert_response :success
  end

  test "should update system_log" do
    patch system_log_url(@system_log), params: { system_log: { message: @system_log.message, type: @system_log.type } }
    assert_response 200
  end

  test "should destroy system_log" do
    assert_difference('SystemLog.count', -1) do
      delete system_log_url(@system_log)
    end

    assert_response 204
  end
end
