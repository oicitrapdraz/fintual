module Finance
  class Portfolio
    attr_accessor :stocks

    def initialize(stocks:)
      @stocks = stocks
    end

    # get the profit of a portfolio with the sum of all its stocks' profit
    def profit(start_date, end_date)
      stocks.map { |stock| stock.profit(start_date, end_date) }.sum
    end

    # get the annualized return of a portfolio with the sum of all its stocks' annualized returns
    def annualized_return(start_date, end_date)
      stocks.map { |stock| stock.annualized_return(start_date, end_date) }.sum
    end
  end
end
