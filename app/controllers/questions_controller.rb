class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer]
    if @input.blank?
      @answer = "je ne t'entend pas".upcase
    elsif @input == 'I am going to work'
      @answer = 'Greaaaaaaaaaat!'
    elsif @input.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
