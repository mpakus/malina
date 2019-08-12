# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def malina
    OpenStruct.new(malina_emails_path: '/')
  end
end

RSpec.describe Malina::EmailsController, type: :controller do
  routes { Malina::Engine.routes }

  let(:malina_email) { Malina::Email.create(from: 'from@mail.com', body: 'Body') }

  describe 'GET index' do
    subject { get :index }

    it { is_expected.to render_template 'index' }
  end

  describe 'GET show' do
    context 'with correct :id' do
      subject { get :show, params: { id: malina_email.id } }

      it { is_expected.to render_template 'show' }
    end

    context 'with wrong :id' do
      it 'raise error' do
        controller.params[:id] = 'WRONG_ID'
        expect { controller.send(:email) }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end

  describe 'DELETE destroy' do
    before { malina_email }
    subject! { delete :destroy, params: { id: 1 } }

    it { expect(Malina::Email.count).to eq 0 }
    it { is_expected.to redirect_to '/' }
  end
end
