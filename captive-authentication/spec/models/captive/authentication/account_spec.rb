# frozen_string_literal: true

require "rails_helper"

RSpec.describe Captive::Authentication::Account do
  describe "#full_name" do
    subject { Captive::Authentication::Account.new(first_name: "jean", last_name: "Dupont") }

    it { expect(subject.full_name).to eq "Jean DUPONT" }
  end
end
