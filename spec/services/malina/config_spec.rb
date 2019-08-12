# frozen_string_literal: true

RSpec.describe Malina::Config do
  describe '.layout' do
    subject { described_class.layout }

    it { is_expected.to eq 'malina' }
    it 'is available to set new value' do
      described_class.layout = 'new_value'
      expect(subject).to eq 'new_value'
    end
  end
end
