class ImagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @images = current_user.images
  end

  def create
    files = params[:files]
    files.each do |file|
      Image.create(file: file, user: current_user)
    end
    redirect_to images_path
  end
end
