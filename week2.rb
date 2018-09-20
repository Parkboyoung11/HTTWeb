def FizzBuzz max
  (1..max).each{ |i|
    x = ''
    x += 'Fizz' if i%2 == 0
    x += 'Buzz' if i%3 == 0
    puts x.empty? ? i : x
  }
end

def PrimeNumbers max
  for i in (2..max) do
    for j in (2..i) do
      break if i%j == 0
    end
    puts i if i == j
  end
end
