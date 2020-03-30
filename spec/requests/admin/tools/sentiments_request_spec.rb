require 'rails_helper'

RSpec.describe "Admin::Tools::Sentiments", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/admin/tools/sentiments/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/admin/tools/sentiments/create"
      expect(response).to have_http_status(:success)
    end
  end

end
