FactoryBot.define do
  factory :club do
    name { Faker::Team.name }

    transient do
      members_count { 5 }
    end

    factory :club_with_members do
      after(:create) do |club, evaluator|
        (0...evaluator.members_count).each do |i|
          club.users << FactoryBot.create(:user)
          # create_list(:)
        end
      end
    end
  end
end
