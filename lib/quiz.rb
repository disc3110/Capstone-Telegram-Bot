require_relative '../lib/questions'

# Manage the questions
class Quiz
  attr_reader :arr_questions

  def initialize(questionsarr)
    @arr_questions = questionsarr
    @current_question = nil
  end

  def give_question
    @current_question = rand(@arr_questions.length)
    @arr_questions[@current_question][:question]
  end

  def give_options
    @opt_a = @arr_questions[@current_question][:answers][:a]
    @opt_b = @arr_questions[@current_question][:answers][:b]
    @opt_c = @arr_questions[@current_question][:answers][:c]
    @opt_d = @arr_questions[@current_question][:answers][:d]
    [[@opt_a, @opt_b], [@opt_c, @opt_d]]
  end

  def give_answer
    @arr_questions[@current_question][:correctAnswer]
  end
end
