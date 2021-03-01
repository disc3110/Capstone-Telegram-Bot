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
    },
    {
      question: 'Which of these countries has the largest population',
      answers: {
        a: 'Russia',
        b: 'Germany',
        c: 'China',
        d: 'Canada'
      },
      correctAnswer: 'China'
    },
    {
      question: 'Which of these U.S. states has the largest area?',
      answers: {
        a: 'Texas',
        b: 'New York',
        c: 'New Mexico',
        d: 'Washington'
      },
      correctAnswer: 'Texas'
    },
    {
      question: 'Which of these countries borders the most other countries?',
      answers: {
        a: 'Canada',
        b: 'Germany',
        c: 'Vietnam',
        d: 'Egypt'
      },
      correctAnswer: 'Germany'
    },
    {
      question: 'How many continents are there?',
      answers: {
        a: '4',
        b: '5',
        c: '6',
        d: '7'
      },
      correctAnswer: '5'
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
    },
    {
      question: 'Express 71/1000 as a decimal',
      answers: {
        a: '71',
        b: '.0071',
        c: '.071',
        d: '7.1'
      },
      correctAnswer: '.071'
    },
    {
      question: 'Round 3.864 to the nearest tenth',
      answers: {
        a: '3.9',
        b: '3.86',
        c: '4',
        d: '3.96'
      },
      correctAnswer: '3.9'
    },
    {
      question: 'Solve for the positive values of y.
      2y(4 - x) = x/2 where x = 2',
      answers: {
        a: '1/2',
        b: '1/4',
        c: '4',
        d: '1'
      },
      correctAnswer: '1/4'
    },
    {
      question: 'Four friends went out for dinner.
      The bill, including tax, totaled $64.00.
      If they want to leave a 15% tip and want to share
      the bill and tip equally, what should each person
      pay?',
      answers: {
        a: '$16',
        b: '$18.40',
        c: '$18',
        d: '$73.6'
      },
      correctAnswer: '$18.40'
    },
    {
      question: 'Suzanna earned $65 in tips on Friday.
      She gave $18 of the tips to the busboy.
      How much did she have left?',
      answers: {
        a: '$57',
        b: '$47',
        c: '$37',
        d: '$83'
      },
      correctAnswer: '$47'
    }
  ].freeze
end
