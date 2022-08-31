class AnswersController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @user = current_user
    @proposal = Proposal.find(params[:proposal_id])
    @answer = Answer.new(user_id: @user.id, proposal_id: @proposal.id)
    @answer.save!
    if next_question.nil?
      redirect_to score_path
    else
      redirect_to question_selector_game_path
    end
  end

  def answer
    @game = Game.find(params[:game_id])
    @user = current_user
    @proposal = Proposal.find(params[:proposal_id])
    @answer = Answer.new(user_id: @user.id, proposal_id: @proposal.id)
    @answer.save!
    @question = Question.find(params[:question_id])
    @next_question = next_question
    if next_question.nil?
      redirect_to game_compute_score_path(@game)
    else
      redirect_to game_question_path(@game, @next_question)
    end
  end

  private

  def next_question
    user = current_user
    @next_question = user.remaining_questions(@game).sample
  end
end
