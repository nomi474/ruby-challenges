for i in 1..100 do
    if i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0
        puts "Buzz"
    elsif (i % 3 == 0 && i % 5 == 0)
        puts "FizzBuzz"
    else
        puts i.to_s
    end
    
end
