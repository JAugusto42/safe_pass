# frozen_string_literal: true

module SafePass
  class Entry
    attr_reader :sarif_file

    # TODO: find way to set a rules.yml
    # TODO: read the sarif file in another class
    # TODO: compare the sarif file with the rules.yml and validate

    def initialize(sarif_file)
      @sarif_file = sarif_file
    end

    def call
      puts("Initialize analysis")
    end
  end
end
