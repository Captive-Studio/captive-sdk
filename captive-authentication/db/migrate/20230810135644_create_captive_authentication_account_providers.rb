class CreateCaptiveAuthenticationAccountProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :captive_authentication_account_providers do |t|
      t.references :account,
                   index: true,
                   foreign_key: { to_table: :captive_authentication_accounts }
      t.string   :provider
      t.string   :uid
      t.string   :token
      t.datetime :token_expires_at
      t.text     :params

      t.timestamps
    end
    add_index :captive_authentication_account_providers,
              [:uid, :provider],
              name: "index_account_providers_on_uid_and_provider",
              unique: true
  end
end
