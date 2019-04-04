require 'rails_helper'

RSpec.describe "Submissions", type: :request do
  describe "POST /submissions" do
    it "denies invalid submission" do
	    headers = { "CONTENT_TYPE" => "application/json" }
	    post "/submissions", :params => '{ "first_name": "Tiago" }', :headers => headers
	    expect(response).to have_http_status(:unprocessable_entity)
  	end

  	it "saves valid submission" do
	    headers = { "CONTENT_TYPE" => "application/json" }
	    post "/submissions", :params => '{ "first_name": "Tiago", "last_name": "Cunha", "email": "example@example.pt", "slogan": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" }', :headers => headers
	    expect(response).to have_http_status(:created)
  	end
  end
end
