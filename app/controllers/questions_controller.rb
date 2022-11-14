class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @result = nil
    if @question == 'I am going to work right now!'
      @result = 'Great'
    elsif @question.include?('?')
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
