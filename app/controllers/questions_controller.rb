class QuestionsController < ApplicationController
  def ask; end

  def answer
    question = params[:ask]

      if question == 'I am going to work' || question == 'I am going to work'.upcase
        @answer = 'Great!'
      elsif question.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      return @answer
  end
end
