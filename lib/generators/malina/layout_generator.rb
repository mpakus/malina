# frozen_string_literal: true

module Malina
  class LayoutGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../app/views/layouts', __dir__)

    desc 'Copy layout file'
    def copy_views_file
      copy_file 'malina.html.erb', Rails.root.join('app/views/layouts/malina.html.erb')
    end
  end
end
