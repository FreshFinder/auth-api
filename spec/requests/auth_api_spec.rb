require 'spec_helper'

describe "Authentication API" do
  describe "GET /api/v1/user/1" do
    it "returns 200" do
      user = FactoryGirl.create :user

      get "/api/v1/user/1", {}, {"Accept" => "application/json"}

      expect(response.status).to eq 200
    end
  end
end
