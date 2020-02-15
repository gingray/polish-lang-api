class AddTranslationIdToWord < ActiveRecord::Migration[5.2]
  def change
    # add_column :words, :translation_id, :integer, :index: true
    add_reference :words, :originator, index: true

  end
end
