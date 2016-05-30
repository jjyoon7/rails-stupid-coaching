class CoachingController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:query]
    @answer = coach_answer_enhanced(@ask)
  end

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      return ""
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
  #   your_message.upcase.end_with?("?")
  #   return "I can feel your motivation! I don't care, get dressed and go to work!"
  # # elsif your_message.coach_answer.upcase
  # #   return "I can feel your motivation! Silly question, get dressed and go to work!"
  # else
end
end

end
