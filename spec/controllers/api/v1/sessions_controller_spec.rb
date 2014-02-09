require 'spec_helper'

describe Api::V1::SessionsController do

  before(:each) do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:identity]
  end

 it "responds to a POST request" do
    user = FactoryGirl.create(:user)

    post :create, {user_id: user.id}, {"Accept" => "application/json"}

    expect(response.status).to eq 200

    body = JSON.parse(response.body)

    expect(body["uid"]).to eq("123545")
    #expect(body["name"]).to eq("Joe")
  end

  it "should successfully create a user" do
      expect {
        post :create, provider: :identity
      }.to change{ User.count }.by(1)
  end
end
