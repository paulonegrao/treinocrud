require 'rails_helper'

RSpec.describe Campaign, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  def valid_attributes(new_attributes = {})
    {
      title: Faker::Name.title,
      goal: Faker::Commerce.price,
      description: Faker::Lorem.sentence,
      end_date: Faker::Date.forward(10)
    }.merge(new_attributes)
  end

  describe "validations" do

      # it "requires a title" do
      #     c = Campaign.new(valid_attributes(title: nil))
      #     expect(c).to be_invalid
      # end
      it "requires a title" do
          c = Campaign.new
          c.valid?
          expect(c.errors.messages).to have_key(:goal)
      end
      it "requires a goal" do
          c = Campaign.new(valid_attributes(goal: nil))
          expect(c).to be_invalid
      end
      it "requires a goal > $10" do
          c = Campaign.new(valid_attributes(goal: 11.money))
          expect(c).to be_invalid
      end
  end

end
