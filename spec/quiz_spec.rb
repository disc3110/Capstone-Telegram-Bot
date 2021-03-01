# frozen_string_literal: true

require_relative '../lib/quiz'

describe Quiz do
  let(:one_question) do
    [{
      question: 'What\'s my name?',
      answers: {
        a: 'Diego',
        b: 'Juan',
        c: 'Gerardo',
        d: 'Lenin'
      },
      correctAnswer: 'Diego'
    }]
  end
  let(:one_question_arr) { Quiz.new(one_question) }
  describe '#give_question' do
    it 'gets a random question from an array of questions' do
      expect(one_question_arr.give_question).to eq('What\'s my name?')
    end
    it 'does not return a nil' do
      expect(one_question_arr.give_question).not_to eq(nil)
    end
  end
  describe '#give_options' do
    it "return the options in the keboard's  display format" do
      one_question_arr.give_question
      expect(one_question_arr.give_options).to eq([%w[Diego Juan], %w[Gerardo Lenin]])
    end
    it 'does not return a single array' do
      one_question_arr.give_question
      expect(one_question_arr.give_options).not_to eq([%w[Diego Juan Gerardo Lenin]])
    end
  end
  describe '#give_answer' do
    it 'gets the correct answer of the question ' do
      one_question_arr.give_question
      expect(one_question_arr.give_answer).to eq('Diego')
    end
    it 'does not return another option' do
      one_question_arr.give_question
      expect(one_question_arr.give_answer).not_to eq('Gerardo')
    end
  end
end
