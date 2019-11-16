module Finance
  class Stock
    attr_accessor :symbol

    def initialize(symbol:)
      @symbol = symbol
    end

    # get the profit of a stock by substracting final and initial stock prices
    def profit(start_date, end_date)
      price(end_date) - price(start_date)
    end

    # get the annualized return of a stock by getting the average daily profit and then transform to yearly
    def annualized_return(start_date, end_date)
      difference_in_days = (end_date - start_date).to_i
      average_daily_profit = profit(start_date, end_date) / difference_in_days.to_f
      average_daily_profit * 365.25
    end

    private

    # for now, it's random, but it should implement a method to get the price from a DB, API, etc.
    def price(date)
      rand(1..100)
    end
  end
end
