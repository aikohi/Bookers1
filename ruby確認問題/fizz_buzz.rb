def fizz_buzz(number)

 if  number % 15 == 0
 return "Fizz_buzz"

	elsif number % 3 == 0
 	return "Fizz"

	elsif number % 5 == 0
 	return "Bizz"

	else
	number.to_s

 end
end
 puts "1以上の数字を入力"

input = gets.to_i

puts "結果は…"

puts fizz_buzz(input)