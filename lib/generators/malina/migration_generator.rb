# frozen_string_literal: true

module Malina
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.expand_path('../templates', __dir__)

    def self.next_migration_number(dirname)
      return Time.new.utc.strftime('%Y%m%d%H%M%S') if ActiveRecord::Base.timestamped_migrations

      format('%.3d', (current_migration_number(dirname) + 1))
    end

    def create_migration_file
      migration_template 'create_malina_emails.rb', 'db/migrate/create_malina_emails.rb'
    end
  end
end
