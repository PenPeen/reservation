class AddEmailToIdentities < ActiveRecord::Migration[7.0]
  def change
    add_column :identities, :email, :string, after: :name
  end
end
