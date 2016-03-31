require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { appointment_id: @invoice.appointment_id, date: @invoice.date, other: @invoice.other, service_id: @invoice.service_id, subtotal: @invoice.subtotal, taxable: @invoice.taxable, taxdue: @invoice.taxdue, taxrate: @invoice.taxrate, total: @invoice.total } }
    end

    assert_response 201
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { appointment_id: @invoice.appointment_id, date: @invoice.date, other: @invoice.other, service_id: @invoice.service_id, subtotal: @invoice.subtotal, taxable: @invoice.taxable, taxdue: @invoice.taxdue, taxrate: @invoice.taxrate, total: @invoice.total } }
    assert_response 200
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_response 204
  end
end
