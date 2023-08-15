class CreateIdentities < ActiveRecord::Migration[7.0]
  def change
    create_table :identities do |t|
      t.string :name, limit: 50
      t.string :email, limit: 256
      t.string :password_digest

      t.timestamps
    end
  end
end
