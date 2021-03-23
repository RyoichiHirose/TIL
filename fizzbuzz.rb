def fizzbuzz(num)
  x=1
  while x<=num
    case 
      when x%15==0
        puts "FizzBuzz!" 
      when x%3==0
        puts "Fizz!"
      when x%5==0
        puts "Buzz"
      else
        puts x
    end
    
    x+=1

  end
end

fizzbuzz(19)