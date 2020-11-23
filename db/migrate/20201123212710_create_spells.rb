class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :key
      t.string :description

      t.timestamps
    end
  end
end
