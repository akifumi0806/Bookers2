class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
	 add_column :users, :image_id, :string
	    #rename_column :users, :image, :image_id
  end
end
