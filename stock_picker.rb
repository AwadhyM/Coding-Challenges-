# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
# You need to buy before you can sell

def stock_picker(array)
  new_array = []
  combos = array.combination(2).to_a
  combos = combos.sort { |combo1, combo2| (combo1[0] - combo1[1]) <=> (combo2[0] - combo2[1]) }
  most_profit = combos[0]
  new_array.push(array.index(most_profit[0]))
  array[array.index(most_profit[1])] = nil while array.count(most_profit[1]) > 1 if array.count(most_profit[1]) > 1
  new_array.push(array.index((most_profit[1])))
  new_array
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # returns expected result 1,4
print stock_picker([5, 8, 1, 5, 8]) # returns expected result 2,4
