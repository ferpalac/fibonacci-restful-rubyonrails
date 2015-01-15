class FibonacciModel
	class_attribute :input, :fib

   def calculate_fib(number)
	@input = number.to_i
	@fib = {}
	   
	if number.to_i < 1
		return @fib
	end

	@fib = [0]
	(number.to_i).times do |i|
		if i==0
		  @fib[i] = 0
		elsif i==1
		  @fib[i] = 1
		else
		  @fib[i] = @fib[i-1] + @fib[i-2]
		end  
	end
	return @fib[number.to_i]
  end
end