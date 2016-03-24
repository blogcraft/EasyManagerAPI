class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :notes
      t.integer :rating
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
