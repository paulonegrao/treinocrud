require 'rails_helper'

RSpec.describe Auction, type: :model do
  describe "validations" do
    it "requires a title" do
      auction = Auction.new
      auction.valid?
      expect(auction.errors.messages).to have_key(:title)
    end

    it "requires a goal" do
      auction = Auction.new
      auction.valid?
      expect(auction.errors.messages).to have_key(:goal)
    end

    it "requires a gaol that is more than $10" do
      auction = Auction.new(goal: 5)
      auction.valid?
      expect(auction.errors.messages).to have_key(:goal)
    end
  end
end
