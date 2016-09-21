puts "How are you doing?"
reply = gets.chomp.downcase
while reply.downcase == 'good'
    puts "I love you"
    puts "How are you doing?"
    reply = gets.chomp.downcase
end