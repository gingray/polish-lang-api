class CreateGrammaticalRules < ActiveRecord::Migration[5.2]
  def change
    create_table :grammatical_rules do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
