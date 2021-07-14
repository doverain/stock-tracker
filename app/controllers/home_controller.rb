class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 
     'pk_6730195fe96d4172b0001facd3fc8dbc')

    if params[:ticker] == ""
        @nothing_msg = "Please Enter a Symbol"
    elsif params[:ticker]
      # check the stock symbol and get info:
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
          @invalid_symbol_msg = "That stock doesn't exist. Please enter a valid symbol."
      end

    end # if params[:ticker] == null
  end #def

  def about
  end

end #class