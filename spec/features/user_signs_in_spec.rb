require 'rails_helper'

feature "user signs in" do
  scenario "with valid credentials and user is signed in" do
    thupten = Fabricate(:user)
    visit root_path
    click_link("Sign in")
    fill_in('email', with: thupten.email)
    fill_in('password', with: thupten.password)
    click_on('Login')
    expect(page).to have_content(thupten.full_name)
  end

  scenario "with valid credentials and is redirected to photos_path" do
    thupten = Fabricate(:user)
    visit root_path
    click_link("Sign in")
    fill_in('email', with: thupten.email)
    fill_in('password', with: thupten.password)
    click_on('Login')
    expect(current_path).to eq(photos_path)
  end

  scenario "with invalid credentials and user is not signed in" do
    thupten = Fabricate(:user)
    visit root_path
    click_link("Sign in")
    fill_in('email', with: "wrong@email.com")
    fill_in('password', with: thupten.password)
    click_on('Login')
    expect(page).to_not have_content(thupten.full_name)
  end

  scenario "with invalid credentials and is not redirected to photos_path" do
    thupten = Fabricate(:user)
    visit root_path
    click_link("Sign in")
    fill_in('email', with: "wrong@email.com")
    fill_in('password', with: thupten.password)
    click_on('Login')
    expect(current_path).to eq(root_path)
  end
end