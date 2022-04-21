require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      user = FactoryBot.build(:user)
      user.valid? do
        get :index
        # expect(response.success).to eq(true)
        expect(response).to be_success
      end
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      user = FactoryBot.build(:user)
      user.valid? do
        get :show, params: { id: project }
        expect(response).to be_success
      end
    end
  end
end