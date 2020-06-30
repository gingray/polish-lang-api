module API
  class TranslationsController < ApplicationController
    def google_translate
      hash = { text: translate_params[:text], from: translate_params[:from], to: translate_params[:to]}
      resp = GoogleTranslate.new(hash, ENV.fetch('GOOGLE_API_KEY')).call
      render json: resp
    end

    private
    def translate_params
      params.permit(:text, :from, :to)
    end
  end
end
