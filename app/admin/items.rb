ActiveAdmin.register Item do

scope :unreleased

  index do
  	column :id
  	column :title
  	column :user  	
  	column "Create", :created_at
  	column "Update", :updated_at
  	default_actions
  end


    form do |f|

      form :html => { :multipart => true } do |f|
        f.inputs "General" do
          f.label :description
        end
      end

    end

  show do |item|
  	attributes_table do
	  	row :id
	  	row :title
	  	row :body
	  	row :latitude
	  	row :longitude

	  	row :user
  	end
  	active_admin_comments
  end

end
