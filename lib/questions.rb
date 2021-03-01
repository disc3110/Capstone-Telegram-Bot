# frozen_string_literal: true

module Quizzes
  GEO_QUESTIONS = [
    {
      question: 'What\'s the capital of Mexico?',
      answers: {
        a: 'Monterrey',
        b: 'Guadalajara',
        c: 'Ciudad de México',
        d: 'Cancun'
      },
      correctAnswer: 'Ciudad de México'
    },
    {
      question: 'What\'s bigger ocean of the world?',
      answers: {
        a: 'Atlantic',
        b: 'Pacific',
        c: 'Indian',
        d: 'Artic'
      },
      correctAnswer: 'Pacific'
    }
  ].freeze
  MATH_QUESTIONS = [
    {
      question: 'If David’s age is 27 years old in 2011. What was his age in 2003?',
      answers: {
        a: '17 years',
        b: '37 years',
        c: '20 years',
        d: '19 years'
      },
      correctAnswer: '19 years'
    },
    {
      question: 'What is the value of x if x\^2 = 89',
      answers: {
        a: '7',
        b: '8',
        c: '9',
        d: '10'
      },
      correctAnswer: '9'
    }
  ].freeze
end
