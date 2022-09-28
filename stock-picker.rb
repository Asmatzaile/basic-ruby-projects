#returns a pair of days representing the best day to buy and the best day to sell
def stock_picker(price_array)
  max_profit = 0
  pair_array = []

  price_array.each_with_index do |buyprice, index|
    daystobuy = price_array[index..-1]
    sellprice = daystobuy.max
    profit = sellprice - buyprice

    if profit > max_profit
      max_profit = profit
      pair_array = [index, daystobuy.find_index(sellprice)+index]
    end
  end
  pair_array
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  ## for a profit of $15 - $3 == $12
