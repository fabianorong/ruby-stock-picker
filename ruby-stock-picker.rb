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

stock_picker([17,3,6,9,15,8,6,1,10])


