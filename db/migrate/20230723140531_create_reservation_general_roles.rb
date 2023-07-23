class CreateReservationGeneralRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_general_roles do |t|
      t.references :identity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
