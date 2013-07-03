class AddPublishedToItems < ActiveRecord::Migration
  def up
  	add_column :items, :published_at, :datetime
  end

  def down
  end
end
