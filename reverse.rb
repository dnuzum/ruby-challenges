class Reverse
  def initialize (str)
    @@str = str
    @@arr = []
  end
  def switch
    @str_length = @@str.length
    until @str_length == 0 do
      @str_length -= 1
      @@arr.push(@@str[@str_length])
    end
    puts "#{@@arr.join()}"
  end
end

puts "Enter a string to reverse:"
str = gets.chomp.to_s

rev = Reverse.new(str)

rev.switch