class Test
  attr_reader :score

  def initialize(questions_path)
    @questions = File.readlines(questions_path)
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
    @question_number += 1
  end
end