class AddDateTimeNoteAndAddressToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :date, :date
    add_column :appointments, :time, :time
    add_column :appointments, :note, :string
    add_column :appointments, :address, :string
  end
end
