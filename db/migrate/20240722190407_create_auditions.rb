class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.references :role
      t.references :actor
      t.string :location
      t.boolean :hired
    end
  end
end
