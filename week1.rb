require 'cmath'

def QuadraticEquation(a, b, c)
  if a != 0 then
    delta = b*b - 4*a*c
    if delta > 0 then
      sqrtDelta = CMath.sqrt(delta)
      x1 = (-b + sqrtDelta) / (a*2)
      x2 = (-b - sqrtDelta) / (a*2)
      puts "Root x1: #{x1}"
      puts "Root x2: #{x2}"
    elsif delta == 0 then
      x = -b / (a*2)
      puts "Double Root x1 = x2 = #{x}"
    else
      puts "Impossible Equation"
    end
  else
    x = -c / b.to_f
    puts "Root x = #{x}"
  end
end

QuadraticEquation 1, -4, 3
