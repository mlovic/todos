require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo("Groceries")
    expect(page).to display_todo "Groceries" 
  end
end

