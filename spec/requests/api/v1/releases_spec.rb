require "rails_helper"

RSpec.describe "validate release", type: :request do
  it "saves a POSTed valid release" do
    json = JSON.parse(file_fixture("release_valid_v1_1_0.json").read)
    post '/releases', params: { data: json }, as: :json
    expect(response).to have_http_status(:created)
  end

  it "rejects a POSTed invalid release" do
    json = JSON.parse(file_fixture("release_invalid_v1_1_0.json").read)
    post '/releases', params: { data: json }, as: :json
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
