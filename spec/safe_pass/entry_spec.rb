# frozen_string_literal: true

require "rspec"
require "safe_pass"

RSpec.describe SafePass::Entry do
  describe ".call" do
    context "success" do
      it "should return a start message" do
        options = "-h"
        expect(described_class.new(options).call).to eq(nil)
      end
    end
  end
end
