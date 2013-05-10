class RemoveColumnFromItems < ActiveRecord::Migration
  def up
  	remove_column :items, :avatar_file_name
  	remove_column :items, :avatar_updated_at
  	remove_column :items, :avatar_content_type
  	remove_column :items, :avatar_file_size
  end

  def down
  end
end
