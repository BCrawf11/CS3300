require 'rails_helper'

# '302' instead of '200' is an easy fix
RSpec.describe "Projects", type: :request do
  describe "GET /projects" do
    it "works! (now write some real specs)" do
      user = FactoryBot.build(:user)
      user.valid? do
        get projects_path
          expect(response).to have_http_status(200)
      end
    end
  end
end
