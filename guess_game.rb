require 'securerandom'

console_inp = ARGV[0].to_i.abs
console_inp = 100 if console_inp == 0
max_number = console_inp
ARGV.clear
tries = 0
max_tries = 10
number = SecureRandom.random_number(1..max_number )
puts "Hello. Can you guess number from 1 to #{max_number}?"
puts "You have #{max_tries} tries"

while tries != max_tries
  guess = gets.to_i.abs
  tries += 1
  if guess > number
    puts "Number is less than #{guess}"
  elsif guess < number
    puts 'Number is greater'
  else
    @win = true
    break
  end
end

puts

if @win
  puts "You won!!! You used #{tries} tries"
else
  puts "You have no tries. You are loser. The number was #{number}."
end