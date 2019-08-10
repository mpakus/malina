# frozen_string_literal: true

module Malina
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __dir__)

    desc 'Configure necessary files to use Malina E-mails'
    def copy_initializer_file
      copy_file 'malina_emails.rb', Rails.root.join('config/initializers/malina_emails.rb')
    end
  end
end
