class AddDisplayImgToItems < ActiveRecord::Migration
  def change
    add_column :items, :display_img, :string
  end
end
