class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@new_photo = Photo.new
		#@new_photo.tags.build
		#@new_photo.comments.build # for nested form, builds new comment with image's id
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to photos_path
		else
			redirect_to new_photo_path
		end
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def show
		@photo = Photo.find(params[:id])
		#@photo.comments.build
		@new_comment = @photo.comments.build
		@photo.comments.build
		@new_comment.user = current_user
		# if @new_comment.save
		# 	redirect_to photo_path
		# else
		# 	redirect_to photos_path
		# end
		@tags = @photo.tags
		@tag = Tag.new
	end

	def destroy
		@photo = Photo.find(params[:id])
		if @photo.destroy
			redirect_to photos_path
		else
			redirect_to photo_path
		end
	end

	def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photos_path
    else
      "Error updating photo"
    end
  end

	def search
		@photos = Photo.search(params[:search])
	end

	def upload_user_image
		@photo = Photo.find(params[:id])
		file = @photo.uesr_image
		send_file file.path
	end

	private

	def photo_params
		params.require(:photo).permit(:name, :description, :user_image, comments_attributes: [:user_id, :content], tags_attributes: [:id, :name])
	end

end
