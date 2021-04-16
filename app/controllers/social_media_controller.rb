class SocialMediaController < ApplicationController
  def new
    @socialmedia = SocialMedia.new
  end

  def destroy
  end

  def create
  end

  def index
    @social_medias = SocialMedia.all
  end
end
