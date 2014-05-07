class Commenter < User
	has_many :comments, as: :commentable
end