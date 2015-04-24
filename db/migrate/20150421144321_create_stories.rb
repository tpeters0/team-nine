class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string      :category
      t.text        :heading
      t.text        :body
      t.text        :lesson
      t.text        :photo_url

      t.timestamps
    end
  end
end
