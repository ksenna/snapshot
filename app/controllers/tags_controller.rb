class TagsController < ApplicationController

  def index
    @photo = Photo.find(params[:id])
    @tags = Photo.find(params[:id])
  end

  def new
    @new_tag = Tag.new(tag_params)

    @taggable = find_taggable
    @tag = Tag.new

    @photo = @hoto.find(params[:id])
    @tag = @photo.tags.new
  end

  def create
    @new_tag = Tag.new(tag_params)
    tag = Tag.where(name: tags_params[:name]).first_or_create
    if @photo.tags << tag
      redirect_to @current_photo, notice: "Comment created"
    else
      render :new
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end

  private 

  def tags_params
    params.require(:tag).permit(:name)
  end