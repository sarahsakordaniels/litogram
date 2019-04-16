class CreateUserText < ActiveRecord::Migration[5.2]
  def change
    create_table :user_texts do |t|
      t.references :text, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
