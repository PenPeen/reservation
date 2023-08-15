class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :name, limit: 50
      t.string :note, limit: 1024

      t.timestamps
    end
  end
end
