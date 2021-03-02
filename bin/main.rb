# rubocop:disable Metrics/BlockLength
require 'telegram/bot'
require_relative '../lib/quiz'
require_relative '../lib/questions'

token = '1533482595:AAFt3yF63IFSHPJ9ly0zzODPuORNYNEMr5k'

Geo = Quiz.new(Quizzes::GEO_QUESTIONS)
Math = Quiz.new(Quizzes::MATH_QUESTIONS)
play_again_keyboard = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: %w[Yes No], one_time_keyboard: true)

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text:
        "Hello, #{message.from.first_name} this is a bot where you can study
        geography or math. Whenever you want to get a geography question just
        write /geo or if you want to get a math question just send /math")
    when '/geo'
      playagain = 0
      while playagain.zero?
        question = Geo.give_question
        answers =
          Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: Geo.give_options, one_time_keyboard: true)
        bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        bot.listen do |answer|
          if answer.text == Geo.give_answer
            bot.api.send_message(chat_id: message.chat.id, text: 'You are Right!')
          else
            bot.api.send_message(chat_id: message.chat.id, text: "Sorry, the correct answer was #{Geo.give_answer}")
          end
          break
        end
        bot.api.send_message(chat_id: message.chat.id, text: 'Do you want another question?
          ', reply_markup: play_again_keyboard)
        bot.listen do |answer|
          playagain = 1 if answer.text == 'No'
          break
        end
      end

    when '/math'
      playagain = 0
      while playagain.zero?
        question = Math.give_question
        answers =
          Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: Math.give_options, one_time_keyboard: true)
        bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        bot.listen do |answer|
          if answer.text == Math.give_answer
            bot.api.send_message(chat_id: message.chat.id, text: 'You are Right!')
          else
            bot.api.send_message(chat_id: message.chat.id, text: "Sorry, the correct answer was #{Math.give_answer}")
          end
          break
        end
        bot.api.send_message(chat_id: message.chat.id, text: 'Do you want another question?
          ', reply_markup: play_again_keyboard)
        bot.listen do |answer|
          playagain = 1 if answer.text == 'No'
          break
        end
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
