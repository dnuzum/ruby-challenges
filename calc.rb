class Calc
  def initialize (oper, n1, n2)
    @@oper = oper
    @@n1 = n1
    @@n2 = n2
  end

  def oper
    case @@oper
    when "div"
      result = @@n1.to_i / @@n2.to_i
      puts "#{@@n1} / #{@@n2} = #{result}"
    when "mult"
      result = @@n1.to_i * @@n2.to_i
      puts "#{@@n1} * #{@@n2} = #{result}"
    when "add"
      result = @@n1.to_i + @@n2.to_i
      puts "#{@@n1} + #{@@n2} = #{result}"
    when "sub"
      result = @@n1.to_i - @@n2.to_i
      puts "#{@@n1} - #{@@n2} = #{result}"
    end
  end
end

puts "What function would you like to perform? add, sub, mult, or div?"
oper = gets.chomp.downcase

puts "Enter first number:"
n1 = gets.chomp

puts "Enter second number:"
n2 = gets.chomp

calc = Calc.new(oper, n1, n2)

calc.oper