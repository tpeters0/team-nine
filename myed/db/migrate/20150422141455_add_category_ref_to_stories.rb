class AddCategoryRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :category, index: true, foreign_key: true
  end
end
