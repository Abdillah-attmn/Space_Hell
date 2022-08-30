class QuestionsController < ApplicationController
  before_action :set_question, only: :show
  def show
    @proposals = @question.proposals
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def next_question
    user = current_user
    @next_question = user.remaining_questions(@game).sample
  end
end
