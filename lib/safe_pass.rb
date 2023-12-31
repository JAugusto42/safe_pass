# frozen_string_literal: true

require "optparse"
require_relative "safe_pass/version"
require_relative "safe_pass/entry"

module SafePass
  # The main class for command-line interface
  class CLI
    def self.start
      options = parse_cli
      Entry.new(options).call
    end

    def self.parse_cli
      options = {}

      OptionParser.new do |opts|
        opts.banner = "Usage: safe_pass [options]"

        opts.on("-s", "--sarif FILE", "Specify the input SARIF file (.sarif)") do |sarif_file|
          options[:sarif_file] = sarif_file
        end

        opts.on("-r", "--rules FILE", "Specify the input rules file (.yml)") do |rules_file|
          options[:rules_file] = rules_file
        end

        opts.on("-h", "--help", "Prints this help message") do
          puts opts
          exit
        end
      end.parse!

      options
    end
  end

  class Error < StandardError; end
end
