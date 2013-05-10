class AddAttachibleId < ActiveRecord::Migration
  def up
  	add_column :attachments, :attachable_type, :string
  end

  def down
  end
end
