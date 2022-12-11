require 'rails_helper'

RSpec.describe "Elements", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/elements/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /result" do
    it "returns http success" do
      get "/elements/result"
      expect(response).to have_http_status(:success)
    end
  end

end
