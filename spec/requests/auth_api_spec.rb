require 'spec_helper'

describe "Authentication API" do
  describe "POSTs to OmniAuth for authentication and returns Identity id" do
    it "returns 200" do
      identity = FactoryGirl.create :identity

      post "/auth/identity/callback", {:auth_key => identity.email, :password => identity.password}, {"Accept" => "application/json"}


      expect(response.status).to eq 200

      body = JSON.parse(response.body)

      expect(body["id"]).to eq(User.last.id)

    end
  end
end
