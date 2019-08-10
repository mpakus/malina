# frozen_string_literal: true

class Malina::Config
  @layout = 'application'

  class << self
    attr_accessor :layout
  end
end
