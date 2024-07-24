class CreateAuditions < ActiveRecord::Migration[6.1]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.string :location
      t.integer :phone
      t.boolean :hired
      t.references :role

      t.timestamps
    end
  end
end
