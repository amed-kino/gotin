FactoryGirl.define do
  factory :album do
    sequence(:tite) {|n| "Album##{n}"}
    year 0000
  end
end
