# frozen_string_literal: true

class Malina::EmailsController < ApplicationController
  layout Malina::Config.layout

  def destroy
    Malina::Email.destroy_all
    redirect_to malina.malina_emails_path
  end

  private

  # @return [Array<Malina::Email>]
  def emails
    @emails ||= Malina::Email.ordered
  end

  # @return [Malina::Email]
  def email
    @email ||= Malina::Email.find(params[:id])
  end

  # @param [String] emails
  # @return [String]
  def prepare(emails = nil)
    return '' unless emails

    JSON.parse(emails)&.join(', ')
  end

  helper_method :emails
  helper_method :email
  helper_method :prepare
end
