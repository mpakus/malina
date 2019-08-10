# frozen_string_literal: true

module Malina
  class ViewsGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __dir__)

    desc 'Copy views files'
    def copy_views_file
      copy_file 'index.html.erb', Rails.root.join('app/views/malina/emails/index.html.erb')
      copy_file 'show.html.erb', Rails.root.join('app/views/malina/emails/show.html.erb')
    end
  end
end
