require_relative 'lib/test'
require_relative 'lib/result_printer'

puts "Ваш уровень общительности.Версия 1.2.\nТест поможет определить ваш уровень общительности."
sleep 1
puts

questions_path = "#{__dir__}/data/questions.txt"
results_path = "#{__dir__}/data/results.txt"

test = Test.new(questions_path)

result_printer = ResultPrinter.new(results_path)

test.ask_question until test.finished?

result_printer.print_result(test)