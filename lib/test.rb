class Test
  def initialize(questions_path)
    # Вывод сообщения если файл не найден.
    unless File.exist?(questions_path)
      abort "Файл с вопросами #{questions_path} не найден."
    end
    # Если файл найден, открываем его, читаем
    # строки в массив-переменную экземляра @results
    file = File.new(questions_path)
    @questions = file.readlines
    file.close

    @score = 0 # хранение баллов
    @question_number = 0 #
  end

  def finished?
    @question_number >= @questions.size
  end

  def take_question
    puts @questions[@question_number]

    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3
      puts 'Ведите и нажмите Enter:'
      puts '1 - Да'
      puts '2 - Нет'
      puts '3 - Иногда'
      user_input = gets.to_i
    end

    if user_input == 1
      @score += 2
    elsif user_input == 3
      @score += 1
    end

    @question_number += 1 # счетчик
  end

  def score
    @score
  end
end