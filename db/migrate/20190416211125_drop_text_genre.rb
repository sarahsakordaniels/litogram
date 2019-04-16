class DropTextGenre < ActiveRecord::Migration[5.2]
  def change
    drop_table :text_genres
  end
end
