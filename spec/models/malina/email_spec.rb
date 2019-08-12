# frozen_string_literal: true

RSpec.describe Malina::Email, type: :model do
  context 'with scopes' do
    describe '.ordered' do
      subject { described_class.ordered }

      before do
        @now      = described_class.create
        @two_days = described_class.create(created_at: 2.days.ago)
        @yday     = described_class.create(created_at: 1.days.ago)
      end

      it { is_expected.to eq [@now, @yday, @two_days] }
    end
  end
end
