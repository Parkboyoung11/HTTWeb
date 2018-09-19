def FizzBuzz()
  (1..100).each{ |i|
    x = ''
    x += 'Fizz' if i%3==0
    x += 'Buzz' if i%5==0
    puts(x.empty? ? i : x)
  }
end

def prime_numbers max
  for i in (2..max) do
    for j in (2..i) do
      break if i%j == 0
    end
    puts "#{i}" if i == j
  end
end
