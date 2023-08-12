class AddIndexEmailUniqueness < ActiveRecord::Migration[7.0]
  def change
    add_index :identities, :email, unique: true
  end
end
