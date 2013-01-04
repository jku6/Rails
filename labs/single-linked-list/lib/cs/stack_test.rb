class StackTest
    
    def main
      factorial(value)
    end

    def factorial(value)
      
      if value > 1
        value * factorial(value - 1)
      else
       1
    end
    def fibonacci(value)
      if value > 2
        value = fibonacci(value - 1) + fibonacci(value - 2)
      elsif value == 1
        1
      elsif value == 2
        1
      end
    end

    # def x(value)
    #   if value != 1
    #       x(value - 1)
    #   end
    #   puts value
    # end
end