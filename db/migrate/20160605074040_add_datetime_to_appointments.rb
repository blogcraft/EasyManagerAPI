class AddDatetimeToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :datetime, :datetime
  end
end
