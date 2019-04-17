class CreateArtWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :art_works do |t|
      t.string :title
      t.string :style
      t.text :description
      t.integer :year
      t.string :wiki
      t.string :image_link
      t.references :artist

      t.timestamps
    end
  end
end
