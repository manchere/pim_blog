class SearchController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
    def index
      unless params[:search].blank?
        @results = Post.search(( params[:query].present? ? params[:query] : '*' )).records
      end
    end

    def searchpost
      if params[:query].nil?
        @post = []
      else
        @post = Post.search params[:query]
      end
    end
end
