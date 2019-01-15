class ResultPrinter
  def initialize(results_path)
    @results = File.readlines(results_path)
  end

  def print_result(test)
    puts "\n\nРезультат теста (всего баллов - #{test.score}):"

    result =
      case test.score
      when (32 .. 30) then 0
      when (25 .. 29) then 1
      when (19 .. 24) then 2
      when (14 .. 18) then 3
      when (9 .. 13) then 4
      when (4 .. 9) then 5
      else
        6
      end
     puts @results[result]
  end
end