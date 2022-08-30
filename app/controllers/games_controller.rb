class GamesController < ApplicationController
  before_action :set_game, only: :question_selector
  def index
    @games = Game.all
  end

  def question_selector
    redirect_to question game_question(next_question)
    # doit rediriger vers la show d'une question
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
