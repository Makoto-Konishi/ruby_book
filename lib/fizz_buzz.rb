def fizz_buzz(n)
  if n % 15 == 0
    'fizzbuzz'
  elsif n % 5 == 0
    'buzz'
  elsif n % 3 == 0
    'fizz'
  else
    n.to_s
  end
end

# fizz_buzz(1)
# fizz_buzz(2)
# fizz_buzz(3)
# fizz_buzz(4)
# fizz_buzz(5)
# fizz_buzz(6)
# fizz_buzz(15)

