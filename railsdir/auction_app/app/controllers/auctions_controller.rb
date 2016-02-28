class AuctionsController < ApplicationController
  def index
    @auctions = Auction.all
  end

  def show
    auction = Auction.find params[:id]
    render json: auction
  end
end
