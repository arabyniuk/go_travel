class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
