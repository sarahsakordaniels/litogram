class CreateTextGenre < ActiveRecord::Migration[5.2]
  def change
    create_table :text_genres do |t|
      t.references :text, foreign_key: true
      t.references :genre, foreign_key: true
    end
  end
end
