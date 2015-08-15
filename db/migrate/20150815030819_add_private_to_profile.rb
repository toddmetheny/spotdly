class AddPrivateToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :is_public, :boolean, default: true
  end
end
