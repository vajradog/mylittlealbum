Fabricator(:photo) do
  photo_url { Faker::Avatar.image }
  title { Faker::Lorem.word }
end