class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end

  def show
  end

  def edit
  end

  def new
    @market = Market.new
  end

  def delete
  end

  def create
    @market = Market.new(market_params)
    if @market.save
      flash[:success] = 'Market successfully created'
      redirect_to @market
    else
      flash[:error] = 'Sorry something went wrong'
      render 'new'
    end
  end
  

  private
  def market_params
    params.require(:market).permit(:market_name, :market_description)
  end
end
