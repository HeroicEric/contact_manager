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
    # Setup that we need to take care of
    user = FactoryGirl.create(:user)

    # What are the actions that lead up to the things we want to verify?
    #
    # This will tell capybara to navigate to the `show` action
    # of the `UsersController`. It will also set the `:id` portion of the
    # path to have the value of the `id` of the user that we're passing in
    # as the argument to the method.
    visit user_path(user)

    # What do we want to verify?
    #
    # These will search the textual content of the page that we're currently
    # viewing for the given text.
    expect(page).to have_content user.first_name
    expect(page).to have_content user.last_name
  end
end
