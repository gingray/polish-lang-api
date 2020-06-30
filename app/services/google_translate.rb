require 'google/cloud/translate/v2'

class GoogleTranslate
  # from: en, to: pl
  attr_reader :text, :from, :to, :api_key

  def initialize(hash, api_key=nil)
    @text = hash.fetch(:text) || raise(ArgumentError)
    @from = hash.fetch(:from)
    @to = hash.fetch(:to) || raise(ArgumentError)
    @api_key = api_key
  end

  def call
    translate_api = ::Google::Cloud::Translate::V2.new(key: api_key)
    normalize(translate_api.translate(text, from: from, to: to))
  end

  def normalize(response)
    {
        origin: response.origin,
        text: response.text,
        from: response.from,
        to: response.to
    }
  end
end