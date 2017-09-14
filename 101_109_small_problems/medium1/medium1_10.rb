# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

def fibonacci(int)
  range_array = (1..int).to_a
  final_array = [1,1]
  range_array.each do |num|
    p num > 2 ? final_array << final_array[num-3] + final_array[num-2] : nil
  end
  final_array[-1]
end

def fibonacci_last(int)
  fib_num = fibonacci(int)
  p fib_num.to_s[-1].to_i
end


# Examples:

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4