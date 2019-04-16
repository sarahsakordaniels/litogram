class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :wiki

      t.timestamps
    end
  end
end
