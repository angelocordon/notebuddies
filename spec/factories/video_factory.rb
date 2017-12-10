FactoryBot.define do
  factory :video do
    title "Some Video"
    sequence(:youtube_url) do |n|
      "https://www.youtube.com/watch?v=A71aqufiNtQ#{n}"
    end
  end
end
