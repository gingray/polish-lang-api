describe API::TranslationsController, type: :request, focus: true do
  describe '#translate', vcr: true do
    context 'success' do
      let(:payload) { {text: "tell me", from: :en, to: :pl } }
      let(:headers) { {"CONTENT_TYPE" => "application/json"} }
      before { allow(ENV).to receive(:fetch).and_return("xxx") }
      before { post '/api/translations/google_translate', params: payload.to_json, headers: headers }
      it do
        exp = {origin: "tell me", text: "Powiedz mi", from: "en", to: "pl"}.with_indifferent_access
        data = JSON.parse(response.body)
        expect(data).to eq exp
      end
    end
  end
end
