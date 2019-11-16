# frozen_string_literal: true

require 'date'
require_relative 'finance/portfolio'
require_relative 'finance/stock'

# define our stocks
stock_symbols = %w[AAPL GOOG AMZN SBUX]

stocks = stock_symbols.map do |stock_symbol|
  Finance::Stock.new(symbol: stock_symbol)
end

# define our portfolio and date range
portfolio = Finance::Portfolio.new(stocks: stocks)

date_range = Date.new(2019, 2, 3)
end_date = Date.new(2019, 3, 3)

# get portfolio profit and annualized return
profit = portfolio.profit(date_range, end_date)
annualized_return = portfolio.annualized_return(date_range, end_date)

# print results
puts "The profit of the Portfolio is: #{profit}"
puts "The annualized profit of the Portfolio is: #{annualized_return}"
