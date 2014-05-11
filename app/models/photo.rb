class Photo < ActiveRecord::Base
	belongs_to :user

	has_many :comments, as: :commentable
	#has_many :comments

	#has_and_belongs_to_many :tags
	has_many :tags, as: :tagable

	mount_uploader :user_image, PhotoUploader
end