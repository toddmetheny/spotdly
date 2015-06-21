class AddSocialToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :facebook, :string
    add_column :profiles, :twitter, :string
    add_column :profiles, :instagram, :string
    add_column :profiles, :hashtag, :string
    add_column :profiles, :url, :string
    add_column :profiles, :slogan, :string
    add_column :profiles, :long_description, :text
    add_column :profiles, :brand_idea, :string
  end
end
