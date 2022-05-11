require "rails_helper"

describe "User signs in", type: :system do
  before do
    @user = FactoryBot.build(:user)
    visit new_user_session_path
  end
end