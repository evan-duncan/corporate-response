require 'rails_helper'

RSpec.describe "Organizations::Evidences", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/organizations/evidence/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/organizations/evidence/show"
      expect(response).to have_http_status(:success)
    end
  end

end
