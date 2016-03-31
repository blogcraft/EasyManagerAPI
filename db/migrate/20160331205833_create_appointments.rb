class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.boolean :confirm
      t.boolean :assist
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
