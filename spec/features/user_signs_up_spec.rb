require 'rails_helper'

feature "user signs up" do
  scenario "with valid data" do
    sign_up
    expect_user_count_to_be(1)
  end

  scenario "with invalid data" do
    sign_up_with_invalid_data
    expect_user_count_to_be(0)
  end

  def expect_user_count_to_be(n)
    expect(User.count).to eq(n)
  end

  def sign_up_with_invalid_data
    visit root_path
    fill_in('user[full_name]', with: "full name")
    click_button('Sign me up!')
  end
end
