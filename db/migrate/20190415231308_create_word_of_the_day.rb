class CreateWordOfTheDay < ActiveRecord::Migration[5.2]
  def change
    create_table :word_of_the_days do |t|
      t.string :word
      t.text :definition
      t.text :origin
      t.text :example
      t.timestamps
    end
  end
end
