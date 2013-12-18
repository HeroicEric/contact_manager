require 'spec_helper'

feature "user views a contact's information", %q{
  As a user
  I want to see a contact's information
  So that I can contact them
} do

  # Acceptance Criteria:
  #
  # - I should see each contact's:
  #   - Age
  #   - Blood type
  #   - Email
  #   - First name
  #   - Height
  #   - Home address
  #   - Last name
  #   - Phone number

  scenario "user views a contact" do
    user = FactoryGirl.create(:user)

    visit user_path(user)

    expect(page).to have_content user.first_name
    expect(page).to have_content user.last_name
  end
end
