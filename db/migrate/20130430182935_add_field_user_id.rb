class AddFieldUserId < ActiveRecord::Migration
  def up
  	change_table :items do |t|
    	t.references :user 
	end
  end

  def down
  end
end
