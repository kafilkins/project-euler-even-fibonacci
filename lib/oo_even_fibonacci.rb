class EvenFibonacci
    attr_reader :fibo_array, :filtered_array, :sum
  
    def initialize(limit)
      @first = 0
      @second = 1
      @fibo_array = []
      @filtered_array = filtered_fibo_array(limit)
      @sum = even_fibo_sum
    end
  
    def filtered_fibo_array(limit)
      i = 0
      while i <= limit
        i = @first + @second
        break if i > limit
        fibo_array << i if i.even?
        @first = @second
        @second = i
      end
      fibo_array
    end
  
    def even_fibo_sum
      filtered_array.reduce(:+) unless fibo_array.empty?
    end
  end