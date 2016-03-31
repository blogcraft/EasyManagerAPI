class AddPaidAndPaidDateToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :paid, :boolean
    add_column :invoices, :paiddate, :datetime
  end
end
