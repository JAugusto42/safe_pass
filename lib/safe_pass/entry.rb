# frozen_string_literal: true

module SafePass
  class Entry
    attr_reader :sarif_file

    def initialize(sarif_file)
      @sarif_file = sarif_file
    end

    def call
      puts("Initialize analysis")
    end
  end
end
