class HomeController < ApplicationController
  def add_sample
    Word.transaction do
      word = Word.create! name: params_add_sample[:original].downcase, lang: 'pl'
      word.tag_list.add params_add_sample[:tags], parse: true
      word.save!
      Word.create! name: params_add_sample[:translation].downcase, lang: params_add_sample[:lang], originator: word

    end
  end

  def language_parts
    render json: LanguagePart.select(:id, :name).to_json
  end

  def words
    words = Word.where(lang: 'pl').map do |word|
      { name: word.name, translations: word.translations }
    end
    render json: words.to_json
  end


  private
  def params_add_sample
    params.permit(:original, :tags, :translation, :lang)
  end
end
