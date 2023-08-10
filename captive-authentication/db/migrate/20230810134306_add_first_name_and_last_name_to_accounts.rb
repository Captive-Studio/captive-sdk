class AddFirstNameAndLastNameToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :captive_authentication_accounts, :first_name, :string
    add_column :captive_authentication_accounts, :last_name, :string
  end
end
