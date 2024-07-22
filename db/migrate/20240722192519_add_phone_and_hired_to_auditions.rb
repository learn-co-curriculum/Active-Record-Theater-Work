class AddPhoneAndHiredToAuditions < ActiveRecord::Migration[6.1]
  def change
    add_column :auditions, :hired, :boolean
    add_column :auditions, :phone, :string
  end
end
