class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.decimal :subtotal
      t.decimal :taxable
      t.decimal :taxrate
      t.decimal :taxdue
      t.decimal :other
      t.decimal :total
      t.references :appointment, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
