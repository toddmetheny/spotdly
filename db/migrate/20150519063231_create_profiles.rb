class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :company_name
      t.text :description
      t.string :user_position
      t.string :type_of_business
      t.string :category
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
