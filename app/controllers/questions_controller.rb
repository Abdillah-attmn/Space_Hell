class QuestionsController < ApplicationController
  before_action :set_question, only: :show
  def show
    @proposals = @question.proposals
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end
end
