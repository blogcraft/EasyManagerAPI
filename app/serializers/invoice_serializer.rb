class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :date, :subtotal, :taxable, :taxrate, :taxdue, :other, :total
  has_one :appointment
  has_one :service
end
