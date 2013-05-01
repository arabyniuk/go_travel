class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :item
      t.string :name
      t.string :url
      t.text :body

      t.timestamps
    end
    add_index :comments, :item_id
  end
end
