require 'pry-byebug'

=begin 
implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
=end
#You need to buy before you can sell

def stock_picker(array)
  new_array = []
  combos = array.combination(2).to_a
  combos = combos.sort {|combo1, combo2| (combo1[0]-combo1[1]) <=> (combo2[0] - combo2[1])}
  most_profit = combos[0]
  new_array.push(array.index(most_profit[0]))
  new_array.push(array.index(most_profit[1]))
  return new_array
end 

print stock_picker([17,6,9,15,8,6,1,10,3])


# 2,4 but your method will return 2,1