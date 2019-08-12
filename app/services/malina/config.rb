# frozen_string_literal: true

class Malina::Config
  @layout = 'malina'

  class << self
    attr_accessor :layout
  end
end
