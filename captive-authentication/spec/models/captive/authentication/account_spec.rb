# frozen_string_literal: true

require "rails_helper"

RSpec.describe Captive::Authentication::Account do
  describe "#validations" do
    context "when the email is valid" do
      subject { build(:account, email: "jean.dupont@captive.fr") }

      it { expect(subject.valid?).to eq true }
    end
    context "when the domain name is invalid" do
      subject { build(:account, email: "invalid@domain-invalid") }

      it { expect(subject.valid?).to eq false }
    end
  end

  describe "#full_name" do
    subject { Captive::Authentication::Account.new(first_name: "jean", last_name: "Dupont") }

    it { expect(subject.full_name).to eq "Jean DUPONT" }
  end
end
