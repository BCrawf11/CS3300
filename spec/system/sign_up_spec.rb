require "rails_helper"

describe "User signs up", type: :system do
  let(:email) { FactoryBot.build(:user).email }
  let(:password) { FactoryBot.build(:user).password }

  before do
    visit new_user_registration_path
  end
end