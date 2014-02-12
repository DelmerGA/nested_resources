class AuctionsController < ApplicationController
  def show
  	@auction = Auction.find(params[:id])
  end

  def edit
  	@auction = Auction.find(params[:id])
  end

  def index
  	@auctions = Auction.all
  end

  def new
  	@auction = Auction.new
  end

  def create
  	#raise params.inspect
  	auction = Auction.create(params[:auction].permit(:body, :bids_attributes=>[:amount]))
  	redirect_to auction
  end

  def delete
  end

  def update
  end



end
