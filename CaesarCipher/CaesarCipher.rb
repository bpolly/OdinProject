class CaesarCipher

	# Gets input word and shift size
	print "Input: "
	input = gets.chomp
	print "Shift: "
	shift = gets.chomp.to_i

	# For each character, shift it SHIFT times and print out each character
	for i in (0..input.length-1)
		letter = input[i].ord

		if ((letter >= 65) && (letter <= 90))
			# If shift goes over 90
			if((letter+shift) > 90)
				letter = 64 + ((letter+shift)-90)

			# If shift goes under 65
			elsif((letter+shift) < 65)
				letter = 91 - (65 - (letter+shift))
			end
		end
		if((letter >= 97) && (letter <=122))
			# If shift goes over 122
			if((letter+shift) > 122)
				letter = 96 + ((letter+shift)-122)

			# If shift goes under 97
			elsif((letter+shift) < 97)
				letter = 123 - (97 - (letter+shift))
			else
				letter = letter + shift
			end
		end
		print letter.chr
	end
	print "\n"
end