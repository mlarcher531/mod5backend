class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :key
      t.string :name
      t.string :description
      t.string :stats
      t.string :short
      t.integer :cost
      t.string :tags

      t.timestamps
    end
  end
end

