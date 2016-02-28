require 'rails_helper'

RSpec.feature "Auctions", type: :feature do
  describe "Home page" do
    it "has `Welcome to Fund.sy` in the page title" do
      # visit emulates visiting a link on a web page
      visit root_path
      # save_and_open_page
      # page is an object that contains the HTML response
      expect(page).to have_title "Welcome to Fund.sy"
    end

    it "includes `Fund.sy - Your Awesome Crowdfunding Solution`" do
      visit root_path
      expect(page).to have_text "Fund.sy - Your Awesome Crowdfunding Solution"
    end

    it "includes an h2 tag with text `Recent Auctions`" do
      visit root_path
      expect(page).to have_selector "h2", text: "Recent Auctions"
    end

    it "displays the auction's title" do
      auction = FactoryGirl.create(:auction)
      visit root_path
      expect(page).to have_text /#{auction.title}/i
    end

  end
end
