class StockPicker

	biggestDiff = 0
	array = [15,4,7,1,5,7,10,16]
	buy = array[0]
	sell = array[1]
	for i in (0..array.length-1)
		for j in ((i+1)..(array.length))
			if ((array[j].to_i - array[i].to_i) > biggestDiff)
				biggestDiff = array[j].to_i - array[i].to_i
				buy = array[i]
				sell = array[j]
			end
		end
	end
	puts biggestDiff
	puts "Buy: #{buy}"
	puts "Sell: #{sell}"
end
