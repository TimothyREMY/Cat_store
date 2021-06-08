class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :title, :string
    add_column :items, :description, :text
    add_column :items, :price, :decimal
    add_column :items, :image_url, :string
  end
end
