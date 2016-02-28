FactoryGirl.define do
  factory :auction do
    # this will create a user object for the auction and associate it with the
    # created object unless you explicitly pass a `:user` attribute when
    # creating the auction
    association :user, factory: :user

    sequence(:title)          { Faker::Company.bs }
    details                   Faker::Lorem.paragraph
    end_on                    30.days.from_now
    sequence(:reserve_price)         { 11 + rand(100) }
  end

end
