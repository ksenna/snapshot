class CreateUsersAndPhotos < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :email
    	t.string :password_digest
    end

    create_table :photos do |t|
    	t.string :name
    	t.text :description
    	t.string :user_image
    	t.integer :user_id
    end

    create_table :comments do |t|
    	t.integer :user_id
    	t.text :content
    end

    create_table :photos_users, id: false do |t|
    	t.integer :photo_id
    	t.integer :user_id
    end
  end
end
