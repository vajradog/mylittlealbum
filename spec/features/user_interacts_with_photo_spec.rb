require 'rails_helper'

feature "user interacts with photos" do
  scenario "with one photo and valid data" do
    picnic = Fabricate(:photo)
    visit photos_path
    add_photo(picnic)
    expect_photo_to_be_present(picnic)

  end

  scenario "with multiple photos and valid data" do
    picnic = Fabricate(:photo)
    wedding = Fabricate(:photo)
    visit photos_path
    add_photo(picnic)
    add_photo(wedding)
    expect_multiple_photos_to_be_present(picnic, wedding)
  end

  scenario "with invalid data and gets error message" do
    visit photos_path
    click_submit_with_no_photo_url
    expect_page_to_have_message("Could not add your photo, photo url must be present")
  end

  def expect_photo_to_be_present(photo)
    expect(page).to have_xpath("//img[contains(@src, \"#{photo.photo_url}\")]")
  end

  def expect_multiple_photos_to_be_present(photo1, photo2)
    expect(page).to have_xpath("//img[contains(@src, \"#{photo1.photo_url}\")]", "//img[contains(@src, \"#{photo2.photo_url}\")]")
  end

  def click_submit_with_no_photo_url
    within("form#new_photo") do 
      click_button("Submit")
    end
  end

  def expect_page_to_have_message(message)
    expect(page).to have_content(message)
  end

  def add_photo(photo)
    fill_in('photo[photo_url]', with: photo.photo_url)
    click_button("Submit")
  end


end
