class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!


  def auth
    request.headers['authorization']
  end
end
