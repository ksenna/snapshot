class TagsController < ApplicationController

  def new
    # @new_tag = Tag.new(tag_params)

    # @taggable = find_taggable
    # @tag = Tag.new

    # @photo = @hoto.find(params[:id])
    # @tag = @photo.tags.new
    @tag = Tag.new
  end

def create
    @tag = Tag.where(name: params[:tag][:name]).first_or_create
    photo = Photo.find(params[:tag][:photo_id])
    photo.tags << @tag
    if @tag.save
      redirect_to photos_path
    else
      render new_tag_path
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end


  # def create
  #   @new_tag = Tag.new(tag_params)
  #   tag = Tag.where(name: tags_params[:name]).first_or_create
  #   if @photo.tags << tag
  #     redirect_to @current_photo, notice: "Comment created"
  #   else
  #     render :new
  #   end
  # end

  # def show
  #   @tag = Tag.find(params[:id])
  # end

  private 

  def tags_params
    params.require(:tag).permit(:name, :photo_id)
  end