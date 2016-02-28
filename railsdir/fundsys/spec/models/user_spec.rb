require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  def valid_attributes(new_attributes = {})
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password
    }.merge(new_attributes)
  end

  describe "validations" do

      it "requires an email" do
          # Given: a new user record with no email
          # When: we try to validate it
          # Then: it's invalid
          user = User.new(valid_attributes(email: nil))
          expect(user).to be_invalid
      end
      it "requires firs_name" do
          user = User.new(valid_attributes(first_name: nil))
          # user.email
          expect(user).to be_invalid
      end

      it "requires last_name" do
          user = User.new(valid_attributes(last_name: nil))
          # user.email
          expect(user.errors.messages).to have_key(:last_name)
      end
  end
end
