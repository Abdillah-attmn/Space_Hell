class RemoveReferencesToAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :answers, :question, null: false, foreign_key: true
  end
end
