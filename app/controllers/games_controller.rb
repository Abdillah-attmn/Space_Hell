class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def question_selector
    # doit rediriger vers la show d'une question
  end
end
