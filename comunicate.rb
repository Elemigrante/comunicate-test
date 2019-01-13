require_relative 'lib/test'
require_relative 'lib/result_printer'

puts "Ваш уровень общительности.\nТест поможет определить ваш уровень общительности.Версия 1.0."

questions_path = "#{__dir__}/data/questions.txt"
results_path = "#{__dir__}/data/results.txt"

test = Test.new(questions_path)
result_printer = ResultPrinter.new(results_path)

test.take_question until test.finished?

result_printer.print_result(test)