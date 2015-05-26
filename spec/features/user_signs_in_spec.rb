require 'rails_helper'

feature "user signs in" do
  scenario "with valid credentials and user is signed in" do
    thupten = Fabricate(:user)
    sign_in(thupten)
    expect_page_to_have_full_name(thupten)
  end

  scenario "with valid credentials and is redirected to photos_path" do
    thupten = Fabricate(:user)
    sign_in(thupten)
    expect_current_path_to_be(photos_path)
  end

  scenario "with invalid credentials and is not redirected to photos_path" do
    sign_in_with_invalid_credential
    expect_current_path_to_be(root_path)
  end

  def expect_page_to_have_full_name(user)
    expect(page).to have_content(user.full_name)
  end

  def expect_current_path_to_be(url)
    expect(current_path).to eq(url)
  end

  def sign_in_with_invalid_credential
    user = Fabricate(:user)
    visit root_path
    click_on('Sign in')
    fill_in('user[full_name]', with: user.full_name)
    fill_in('user[email]', with: user.email)
    fill_in('user[password]', with: "wrong_password")  
  end
end