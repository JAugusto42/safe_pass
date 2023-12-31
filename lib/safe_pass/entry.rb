# frozen_string_literal: true

module SafePass
  class Entry
    attr_reader :options

    # TODO: find way to set a rules.yml
    # TODO: read the sarif file in another class
    # TODO: compare the sarif file with the rules.yml and validate

    def initialize(options)
      @options = options
    end

    def call
      puts("Initialize analysis ...")
    end
  end
end
