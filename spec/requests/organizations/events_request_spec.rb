require 'rails_helper'

RSpec.describe "Organizations::Events", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/organizations/events/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/organizations/events/show"
      expect(response).to have_http_status(:success)
    end
  end

end
