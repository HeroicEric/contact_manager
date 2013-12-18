require 'spec_helper'

feature "user views their contacts", %q{
  As a user
  I want to see all of my contacts
  So that I can contact them
} do

  # Acceptance Criteria:
  #
  # - I should see each contact's name
  # - Contact's name should be displayed "last, first"
  #
  # Not yet implemented
  # - Contacts should be ordered alphabetically by last name

  scenario "user views all their contacts" do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user3 = FactoryGirl.create(:user)

    visit root_path

    expect(page).to have_content "#{user1.last_name}, #{user1.first_name}"
    expect(page).to have_content "#{user2.last_name}, #{user2.first_name}"
    expect(page).to have_content "#{user3.last_name}, #{user3.first_name}"
  end
end
