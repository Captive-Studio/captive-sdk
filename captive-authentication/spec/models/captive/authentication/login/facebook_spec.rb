# frozen_string_literal: true

require "rails_helper"

RSpec.describe Captive::Authentication::Login::Facebook do
  let(:stub_facebook) do
    stub_request(:get, "https://graph.facebook.com/me?access_token=token&fields=email,name,id")
      .to_return(
        status: 200,
        body:
        reponse.to_json,
        headers: { content_type: "application/json" }
      )
  end

  describe "#email" do
    context "when Facebook did not provide email" do
      # Why an user doesn't have email :
      # https://stackoverflow.com/questions/70436698/faceook-graph-api-not-returning-email-of-other-user-accounts-except-the-administ
      # Actually, the reason why some of the accounts were not returning the email key in the object was that they do not have any primary email setup for their Facebook account inside the General Account Settings.
      # > The users were using their phone numbers or username to log in on Facebook.
      # That's why when they were logging in to my application, the Facebook Graph API couldn't get the email from their accounts, and ultimately I couldn't get their email addresses in the response object.
      subject { described_class.new(token: "token") }

      let(:reponse) do
        {
          id: "fb_id",
          name: "Charles Dupont",
        }
      end

      before(:each) { stub_facebook }

      it { expect(subject.email).to eq "fb_id@facebook.com" }
      it { expect(subject.confirmed_at).to eq nil }
    end

    context "when Facebook provide email" do
      subject { described_class.new(token: "token") }

      let(:reponse) do
        {
          id: "fb_id",
          name: "Charles Dupont",
          email: "charles.dupont@example.com",
        }
      end

      before(:each) { stub_facebook }

      it { expect(subject.email).to eq "charles.dupont@example.com" }
      it { expect(subject.confirmed_at).not_to eq nil }
    end
  end

  describe "#token_infos" do
    subject { described_class.new(token: "token") }

    let(:reponse) do
      {
        id: "fb_id",
        name: "Charles Dupont",
        email: "charles.dupont@example.com",
      }
    end

    before(:each) { stub_facebook }

    it { expect(subject.token_infos.symbolize_keys).to eq reponse }
  end
end
