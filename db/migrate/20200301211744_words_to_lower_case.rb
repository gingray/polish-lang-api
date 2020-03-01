class WordsToLowerCase < ActiveRecord::Migration[5.2]
  def change
    Word.find_each do |word|
      name = word.name.downcase
      word.update name: name
    end
  end
end
