class RPNCalculator
  # TODO: your code goes here!
  OPERATORS = [:+, :-, :*, :/]
  def initialize
    @stack = []
  end
  
  def push(num)
    @stack << num
  end
  
  def value
    @stack.last
  end
  
  def tokens(string)
    string.split(" ").map { |char| operator?(char) ? char.to_sym : char.to_i }
  end
  

  def evaluate(string)
    tokens(string).each do |token|
      token.is_a?(Integer) ? push(token) : operation(token)
    end
    value
  end

  #-----------------------------------------------------------------------
  def minus
    operation(:-)
  end

  def plus
    operation(:+)
  end

  def times
    operation(:*)
  end

  def divide
    operation(:/)
  end
 
  #-----------------------------------------------------------------------
  private
  def operator?(char)
    OPERATORS.include?(char.to_sym)
  end

  def operation(operator)
    raise "calculator is empty" if @stack.count < 2

    second_value = @stack.pop
    first_value = @stack.pop
    if operator == :+
      @stack << first_value + second_value
    elsif operator == :-
      @stack << first_value - second_value
    elsif operator == :*
      @stack << first_value * second_value
    elsif operator == :/
      @stack << first_value.fdiv(second_value)
    end

    self
  end
end
