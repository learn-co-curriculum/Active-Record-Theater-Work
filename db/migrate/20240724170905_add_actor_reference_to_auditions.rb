class AddActorReferenceToAuditions < ActiveRecord::Migration[6.1]
  def change
    remove_column :auditions, :actor, :string
    remove_column :auditions, :phone, :string
    add_reference :auditions, :actor, after: :role_id
  end
end
