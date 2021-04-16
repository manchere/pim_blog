require 'rails_helper'

RSpec.describe "SocialMedia", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/social_media/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/social_media/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/social_media/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/social_media/index"
      expect(response).to have_http_status(:success)
    end
  end

end
