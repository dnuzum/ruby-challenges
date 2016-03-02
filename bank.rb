class Bank

  @@balance = 4000

  def initialize
  end

  def balance
    puts "Your current balance is: #{@@balance}"
  end

  def withdraw
    puts "Enter how much you would like to withdraw:"
    @amount = gets.chomp.to_i
    @@balance -= @amount
    puts "Your new balance is: #{@@balance}"
  end

  def deposit
    puts "Enter how much you are depositing:"
    @amount = gets.chomp.to_i
    @@balance += @amount
    puts "Your new balance is: #{@@balance}"
  end
end

bank = Bank.new()
puts "Your balance is: 4000"
begin
  puts "Would you like to withdraw, deposit, or balance?"
  action = gets.chomp
  if action == "withdraw"
    bank.withdraw
  elsif action == "deposit"
    bank.deposit
  elsif action == "balance"
    bank.balance
  end
  puts "Are you done? yes or no"
  selection = gets.chomp
end while selection == "no"
      
    
      
