require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get appointments_url
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post appointments_url, params: { appointment: { assist: @appointment.assist, client_id: @appointment.client_id, confirm: @appointment.confirm, date: @appointment.date } }
    end

    assert_response 201
  end

  test "should show appointment" do
    get appointment_url(@appointment)
    assert_response :success
  end

  test "should update appointment" do
    patch appointment_url(@appointment), params: { appointment: { assist: @appointment.assist, client_id: @appointment.client_id, confirm: @appointment.confirm, date: @appointment.date } }
    assert_response 200
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete appointment_url(@appointment)
    end

    assert_response 204
  end
end
