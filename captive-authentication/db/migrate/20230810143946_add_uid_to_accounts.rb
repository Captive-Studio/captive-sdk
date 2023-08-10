class AddUidToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :captive_authentication_accounts,
               :uid,
               :uuid,
               default: "gen_random_uuid()",
               null: false
  end
end
