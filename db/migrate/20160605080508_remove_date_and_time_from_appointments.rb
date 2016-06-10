class RemoveDateAndTimeFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :date, :date
    remove_column :appointments, :time, :time
  end
end
