class CreateLanguageParts < ActiveRecord::Migration[5.2]
  def change
    create_table :language_parts do |t|
      t.string :name
      t.timestamps
    end
  end
end
