class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |table|
       table.string :character_name

       table.timestamps
    end
  end
end
