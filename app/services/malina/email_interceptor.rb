# frozen_string_literal: true

class Malina::EmailInterceptor
  def self.delivering_email(message)
    Malina::Email.create(
      subject: message.subject,
      to:      message.to,
      from:    message.from,
      cc:      message.cc,
      bcc:     message.bcc,
      body:    message.body
    )
  end
end
