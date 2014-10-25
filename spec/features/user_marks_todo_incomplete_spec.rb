require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("Groceries")

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Groceries"
    expect(page).to display_todo "Groceries"
  end
end
