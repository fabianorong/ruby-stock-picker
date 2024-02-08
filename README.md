# Stock Picker
> Stock Picker is a Ruby project that implements a method to choose the best pair of days to buy and sell stocks, given an array of prices. The project is part of the Ruby course at [The Odin Project](https://www.theodinproject.com/lessons/ruby-conditional-logic), an online web development learning platform.


## Functionalities

- Receives an array of stock prices, one for each hypothetical day.
- Returns a pair of days that represents the best day to buy and the best day to sell.
- Considers extreme cases, such as when the lowest day is the last or the highest day is the first.
- Uses programming logic and basic Ruby concepts, such as strings, arrays, hashes, conditionals and loops.

### Example
```ruby

#method
def stock_picker(prices)
    best_profit = 0
    best_buy_sell_days = ""

    prices.each_with_index do |number1, index1|
        prices.each_with_index do |number2, index2|

            profit = number2 - number1

            if profit > best_profit && index2>index1
                best_profit = profit
                best_buy_sell_days = [index1, index2]
            end            
        end
    end
    p best_buy_sell_days    
end

# Test
stock_picker([17,3,6,9,15,8,6,1,10])
```
### Expected output
```ruby
[1, 4]
```
