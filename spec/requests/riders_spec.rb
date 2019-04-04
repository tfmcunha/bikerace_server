require 'rails_helper'

RSpec.describe "Riders", type: :request do
  describe "GET /riders" do
    it "it returns json data" do
      get "/riders"
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq("application/json")
    end
  end
end
