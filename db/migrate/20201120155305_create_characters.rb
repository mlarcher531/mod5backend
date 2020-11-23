class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :key
      t.string :title
      t.string :blurb
    end
  end
end
