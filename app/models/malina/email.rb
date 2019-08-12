# frozen_string_literal: true

class Malina::Email < ActiveRecord::Base
  self.table_name = 'malina_emails'

  scope :ordered, -> { order(created_at: :desc) }
end
# == Schema Information
#
# Table name: malina_emails
#
#  id         :integer          not null, primary key
#  bcc        :string
#  body       :text
#  cc         :string
#  from       :string
#  subject    :string
#  to         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_malina_emails_on_from  (from)
#  index_malina_emails_on_to    (to)
#
# rubocop:enable Metrics/LineLength, Lint/UnneededDisable
