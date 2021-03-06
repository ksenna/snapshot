class User < ActiveRecord::Base

	has_secure_password

	has_many :photos
	has_many :comments
	has_many :tags

	validates_presence_of :email
	validates_uniqueness_of :email
	
end