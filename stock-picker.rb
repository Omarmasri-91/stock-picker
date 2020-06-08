def stock_picker
    puts "enter an array of stock prices (one price for each day):"
    list=gets.chop
    list=list.delete "]"
    list=list.delete "["
    list=list.split(",")
    list=list.map {|num| num.to_i}
    highest_profit=0
    best_pair=""
    pairs_list={}
    list.each_with_index do |buying_price, buying_day|
        list.each_with_index do |selling_price, selling_day|
            if buying_day<=selling_day
                profit=selling_price - buying_price
                pairs_list["#{buying_day} - #{selling_day}"]=profit
            end
        end
    end
    pairs_list.each do |day_pair, profit|
        if profit>highest_profit
            highest_profit=profit
            best_pair=day_pair
        end
    end
    puts "the best day to buy and the best day to sell are #{best_pair} (respectively)."
    puts "the highest profit is #{highest_profit}"
end
stock_picker
        

