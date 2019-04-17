class AddCollumnToTexts < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :genre, :string
  end
end
