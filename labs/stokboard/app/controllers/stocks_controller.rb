class StocksController < ApplicationController

  def quote
  end
  def yahoo
    @symbol = params[:symbol].upcase
    
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
    # @avg = @quotes.inject(&:+) / count
    @stock = Stock.create(:symbol => @symbol, :quote => @quote)
    
    stocks = Stock.select(:symbol).uniq # all your stock symbols
    symbols = stocks.map{|stock| stock.symbol}

    @last_trades = {}
    symbols.each do |symbol|
      last_trade = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
      @last_trades[symbol] = last_trade
      Stock.create(:symbol => symbol, :quote => last_trade)
    end


    
    # last trades
      # get all your stocks, get the last trades, display and add them to the database

    # graphs
      #all all your stocks, get all the trades, graph them.
  end



  # def yahoo
  #   @symbol = params[:symbol].upcase
  #   count = params[:count].to_i
  #   @quotes = count.times.map{sleep 3; YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade}
  #   # @avg = @quotes.inject(&:+) / count
  #   @quotes.each{|q| Stock.create(:symbol => @symbol, :quote => q)}
  # end

end