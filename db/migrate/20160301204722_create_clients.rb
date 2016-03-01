class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :notes
      t.integer :rating

      t.timestamps
    end
    add_index :clients, :person_id
  end
end
