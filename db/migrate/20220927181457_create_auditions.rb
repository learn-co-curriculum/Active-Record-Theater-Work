class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |table|
      table.string :actor
      table.string :location
      table.integer :phone
      table.boolean :hired
      table.integer :role_id

      table.timestamps
    end
  end
end
