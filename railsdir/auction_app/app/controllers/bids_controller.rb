class BidsController < ApplicationController
  before_action :authenticate_user

  def create
    @auction = Auction.find(params[:auction_id])
    @bid   = @auction.bids.new bid_params
    @comment  = Comment.new
    if @bid.save
      redirect_to new_bid_payment_path(@bid), notice: "Please make a payment"
    else
      render "/auctions/show"
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end
end
