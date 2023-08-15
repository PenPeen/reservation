class CreateReservationAdminRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_admin_roles do |t|
      t.references :identity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
