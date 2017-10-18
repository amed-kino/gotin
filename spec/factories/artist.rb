FactoryGirl.define do
  factory :artist do
    sequence(:name) {|n| "Artist##{n}"}
    trait :with_albums do
      album 'albums'
    end
  end
end
