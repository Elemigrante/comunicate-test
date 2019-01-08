class ResultPrinter
  def initialize(results_path)
    # Вывод сообщения если файл не найден.
    unless File.exist?(results_path)
      abort "Файл с результатами #{results_path} не найден."
    end
    # Если файл найден, открываем его, читаем
    # строки в массив-переменную экземляра @results
    file = File.new(results_path)
    @results = file.readlines
    file.close
  end

  def print_result(test)
    puts
    puts
    puts "\n\nРезультат теста (всего баллов - #{test.score}):"
    # Логика вывода результатов в зависимости от баллов
    case test.score
    when (32..30) then puts @results[0]
    when (25..29) then puts @results[1]
    when (19..24) then puts @results[2]
    when (14..18) then puts @results[3]
    when (9..13) then puts @results[4]
    when (4..9) then puts @results[5]
    else
      puts @results[6]
    end
  end
end