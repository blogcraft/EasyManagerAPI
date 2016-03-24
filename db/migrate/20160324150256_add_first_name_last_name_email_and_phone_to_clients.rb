class AddFirstNameLastNameEmailAndPhoneToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :first_name, :string, null: false, default: ""
    add_column :clients, :last_name, :string, null: false, default: ""
    add_column :clients, :email, :string, null: false, default: ""
    add_column :clients, :phone, :string, null: false, default: ""
  end
end
