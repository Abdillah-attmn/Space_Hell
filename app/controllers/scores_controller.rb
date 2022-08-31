class ScoresController < ApplicationController
  def show
    user = current_user
    @score = Score.new
    point = 0
    user.games.each do |game|
      game.answers.each do |answer|
        point += 1 if answer.proposal.correct == true
      end
    end
    @score.point = 10 * point
    @score.save!
  end
end
