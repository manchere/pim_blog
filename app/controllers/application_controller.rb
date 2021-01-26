class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :process_token

  def process_token
    if auth
      begin
        jwt_payload = JWT.decode(auth.split(' ')[1], Rails.application.secrets.secret_key_base).first
        @current_user_id = jwt_payload['id']
      rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
        head :unauthorized
      end
    end
  end

  private
  def auth
    request.headers['authorization']
  end
end
