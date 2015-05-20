require 'rails_helper'

feature "user signs up" do
  scenario "with valid data" do
    visit root_path
    fill_in('user[full_name]', with: "John Doe")
    fill_in('user[email]', with: "john@example.com")
    fill_in('user[password]', with: "password")
    click_button('Submit')
    expect(User.count).to eq(1)
  end

  scenario "with invalid data" do
    visit root_path
    fill_in('user[full_name]', with: "John Doe")
    fill_in('user[email]', with: "")
    fill_in('user[password]', with: "password")
    click_button('Submit')
    expect(User.count).to eq(0)
  end

end