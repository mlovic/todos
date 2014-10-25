require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("Groceries")
    click_on "Mark complete"

    expect(page).to display_completed_todo "Groceries"
  end
end
