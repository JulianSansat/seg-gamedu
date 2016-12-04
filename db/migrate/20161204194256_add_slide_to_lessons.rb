class AddSlideToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :slide, :string
  end
end
