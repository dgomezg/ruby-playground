class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation.new("Operation not supported: #{operation}")               unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError.new("Operands #{[first_operand, second_operand]} must be Numeric") unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    begin
      result = eval "#{first_operand} #{operation} #{second_operand}"
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end
