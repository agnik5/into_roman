class NumberConverter

	def initialize(num)
		@num = num
	end
end

	def main
		puts "Podaj liczbę od 1 do 3999"
		num = gets.chomp.to_i
		roman(num)
	end

	def roman(num)

		romans = { I: "1", II: "2", III: "3", IV: "4", V: "5", VI: "6", VII: "7", VIII: "8", IX: "9", X: "10", 
		XX: "20", XXX: "30", XL: "40", L: "50", LX: "60", LXX: "70", LXXX: "80", XC: "90", C: "100",
		CC: "200", CCC: "300", CD: "400", D: "500", DC: "600", DCC: "700", DCCC: "800", CM: "900", M: "1000",
		MM: "2000", MMM: "3000" }


			if num >= 1 && num <= 3999
		
			length = num.to_s.length
			digits = num.to_s.split("")

			case length
			
				when 4
				num_thousands = digits[-4] + "000"
				num_hundreds = digits[-3] + "00"
				num_tens = digits[-2] + "0"
				num_ones = digits[-1]
			
				when 3
				num_thousands = ""
				num_hundreds = digits[-3] + "00"
				num_tens = digits[-2] + "0"
				num_ones = digits[-1]
			
				when 2
				num_thousands = ""
				num_hundreds = ""
				num_tens = digits[-2] + "0"
				num_ones = digits[-1]
			
				when 1
				num_thousands = ""
				num_hundreds = ""
				num_tens = ""
				num_ones = digits[-1]
		
			end

				num_roman = romans.key(num_thousands).to_s + romans.key(num_hundreds).to_s + romans.key(num_tens).to_s + romans.key(num_ones).to_s

				puts "Liczba #{num} zapisana cyframi rzymskimi to #{num_roman}."
	
			else
				puts "To nie jest liczba od 1 do 3999."

		end

	end

main