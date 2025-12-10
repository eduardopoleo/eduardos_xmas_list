class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :link
      t.text :image
      t.text :description
      t.string :price
      t.boolean :claimed, default: false, null: false

      t.timestamps
    end
  end
end
