# frozen_string_literal: true

RSpec.describe Malina::EmailInterceptor do
  describe '.delivering_email' do
    let!(:email) { OpenStruct.new(from: 'from@mail.com', to: 'to@mail.com', subject: 'Subject text', cc: 'cc@mail.com', bcc: 'bcc@mail.com', body: 'Body text') }
    let(:malina_email) { Malina::Email.last }

    before { described_class.delivering_email(email) }

    it { expect(malina_email.from).to eq email.from }
    it { expect(malina_email.to).to eq email.to }
    it { expect(malina_email.subject).to eq email.subject }
    it { expect(malina_email.cc).to eq email.cc }
    it { expect(malina_email.bcc).to eq email.bcc }
    it { expect(malina_email.body).to eq email.body }
  end
end
