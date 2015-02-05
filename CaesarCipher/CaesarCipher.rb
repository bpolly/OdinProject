class CaesarCipher

	# Gets input word and shift size
	print "Input: "
	input = gets.chomp
	print "Shift: "
	shift = gets.chomp.to_i

	# For each character, shift it SHIFT times and print out each character
	for i in (0..input.length-1)
		letter = input[i].ord
		letter += shift
		print letter.chr
	end
	print "\n"
end