class Guess

  def game
    @@computer_select = rand(1..100)
    count = 1

    begin
      puts "Guess a number between 1 and 100:"
      @@user_guess = gets.chomp.to_i

      if @@user_guess > @@computer_select
        puts "The number is lower. Guess again."
        count += 1
      elsif @@user_guess < @@computer_select
        puts "The number is higher. Guess again."
        count += 1
      elsif @@user_guess == @@computer_select
        puts "You have correctly guessed the number in #{count} attempts!"

      end
    end while @@user_guess != @@computer_select
  end       
end

guess = Guess.new
guess.game