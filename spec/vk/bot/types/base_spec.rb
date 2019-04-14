RSpec.describe VK::Bot::Types::Base do
  let(:klass) do
    Class.new(described_class) do
      attribute :text, VK::Bot::Types::String
      attribute :number, VK::Bot::Types::Strict::Integer
    end
  end

  describe '#to_hash' do
    subject { ->(attrs) { klass.new(attrs).to_hash } }
    it 'strips empty values' do
      expect{subject[{}]}.to raise_error(Dry::Struct::Error, /:text is missing in Hash input/)
      expect(subject[text: 'test', number: 1]).to eq(text: 'test', number: 1)
    end
  end
end
