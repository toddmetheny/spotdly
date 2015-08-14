class AddPrivateToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :public, :boolean, :default => true
  end
end
