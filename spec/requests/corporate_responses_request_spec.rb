require 'rails_helper'

RSpec.describe "CorporateResponses", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/corporate_responses/index"
      expect(response).to have_http_status(:success)
    end
  end

end
