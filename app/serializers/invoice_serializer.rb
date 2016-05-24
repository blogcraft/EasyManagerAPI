class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :date, :subtotal, :taxable, :taxrate, :taxdue, :other, :total, :paid,
  :client_name, :client_last_name
  has_one :appointment
  has_one :service

  def client_name
    return object.appointment.client.first_name
  end

  def client_last_name
    return object.appointment.client.last_name
  end
end
