class RemoveUserFromGame < ActiveRecord::Migration[7.0]
  def change
    remove_reference :games, :user, null: false, foreign_key: true
  end
end
