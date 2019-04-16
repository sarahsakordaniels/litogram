class AddCollumnsToWordOfTheDays < ActiveRecord::Migration[5.2]
  def change
    add_column :word_of_the_days, :part_of_speech, :string
    add_column :word_of_the_days, :pronunciation, :string
  end
end
