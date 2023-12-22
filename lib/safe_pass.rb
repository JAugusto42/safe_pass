# frozen_string_literal: true

require_relative "safe_pass/version"
require_relative "safe_pass/entry"

module SafePass
  # The main class
  class Main
    def self.entry_point
      sarif_file = ARGV.first
      Entry.new(sarif_file).call
    end
  end

  class Error < StandardError; end
end
