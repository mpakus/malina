# frozen_string_literal: true

ActionMailer::Base.register_interceptor(Malina::EmailInterceptor) if Rails.env.development?

Malina::Config.layout = 'malina'
