class AddImagesToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :logo, :string
    add_column :profiles, :background_image, :string
  end
end
