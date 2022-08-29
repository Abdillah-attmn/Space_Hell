class CreateProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :proposals do |t|
      t.string :content
      t.boolean :correct, default: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
