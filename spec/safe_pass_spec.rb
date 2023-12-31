# frozen_string_literal: true

require "rspec"
require "safe_pass"

RSpec.describe SafePass::CLI do
  describe ".start" do
    before do
      allow(Kernel).to receive(:system).and_return(true)
      ARGV.replace(valid_arguments)
    end

    context "with valid command line arguments" do
      let(:valid_arguments) { %w[-s input.sarif -r rules.yml] }

      it "parses the command line arguments and returns options hash" do
        options = described_class.parse_cli
        expect(options).to eq({ sarif_file: "input.sarif", rules_file: "rules.yml" })
      end
    end
  end
end
