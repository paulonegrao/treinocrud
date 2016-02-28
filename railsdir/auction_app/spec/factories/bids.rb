FactoryGirl.define do
  factory :bid do
    amount ""
    aasm_state "MyString"
    user nil
    auction nil
  end

end
