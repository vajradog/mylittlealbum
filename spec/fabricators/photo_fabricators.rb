Fabricator(:photo) do
  photo_url "someimage.jpg"
  title { Faker::Lorem.word }
end