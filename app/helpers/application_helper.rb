module ApplicationHelper
  def format_numbers(numbers)
    processed = numbers.to_f/100.00
    sprintf("%.2f", processed)
  end
end
