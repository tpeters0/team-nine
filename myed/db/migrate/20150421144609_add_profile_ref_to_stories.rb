class AddProfileRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :profile, index: true, foreign_key: true
  end
end
