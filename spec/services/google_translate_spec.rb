describe GoogleTranslate do
  describe "#translate", vcr: true do
    context 'success one word' do
      let(:api_key) { 'xxx' }
      let(:text) { 'little' }
      let(:from) { 'en' }
      let(:to) { 'pl' }
      let(:service) { GoogleTranslate.new({ text: text, from: from, to: to }, api_key) }
      let(:exp_resp) { { from: "en", origin: "little", text: "mało", to: "pl" } }

      it do
        expect(service.call).to eq exp_resp
      end
    end

    context 'success sentence' do
      let(:api_key) { 'xxx' }
      let(:text) { 'down the river' }
      let(:from) { 'en' }
      let(:to) { 'pl' }
      let(:service) { GoogleTranslate.new({ text: text, from: from, to: to }, api_key) }
      let(:exp_resp) { { from: "en", origin: "down the river", text: "w dół rzeki", to: "pl" } }

      it do
        expect(service.call).to eq exp_resp
      end
    end
  end
end