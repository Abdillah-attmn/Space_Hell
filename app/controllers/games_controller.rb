class GamesController < ApplicationController
  before_action :set_game, only: %i[question_selector reset]
  def index
    @games = Game.all
    @demo_cards = %w[demo-card--step1 demo-card--step2 demo-card--step3 demo-card--step4 demo-card--step5]
    @card_bg_colors = %w[bg-primary bg-success bg-warning bg-info bg-danger bg-dark]
  end

  def question_selector
    redirect_to question game_question(next_question)
    # doit rediriger vers la show d'une question
  end

  def reset
    @game.questions.each do |question|
      question.answers.each { |answer| answer.destroy if answer.user }
    end
    redirect_to games_path, status: :see_other
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def next_question
    user = current_user
    @next_question = user.remaining_questions(@game).sample
  end
end
