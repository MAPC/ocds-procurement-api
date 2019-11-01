describe "Fetching the current user" do
  context "with valid auth token" do
    it "returns the current user" do
      user = create(:user)
      auth_header = { "Auth-Token" => user.auth_token }

      #get v1_current_user_url, {}, auth_header
      url = "/users/#{user.id}"
      get url

      expect(response.status).to eq 200
      expect(response).to match_response_schema("user")
    end
  end
end

describe "Validate planning schema" do
  context "against release.schema" do
    it "matches" do
      get '/planning'

      expect(response).to match_response_schema("release")
    end
  end
end
