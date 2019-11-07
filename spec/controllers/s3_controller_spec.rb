require 'rails_helper'

RSpec.describe S3Controller, type: :controller do

  describe "GET #direct_post" do
    it "returns http success" do
      get :direct_post
      expect(response).to have_http_status(:success)
    end
  end

end
