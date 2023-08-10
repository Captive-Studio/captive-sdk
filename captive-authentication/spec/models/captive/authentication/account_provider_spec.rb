require "rails_helper"

module Captive::Authentication
  RSpec.describe AccountProvider, type: :model do
    it { is_expected.to belong_to(:account) }
    it { is_expected.to validate_uniqueness_of(:uid).scoped_to(:provider) }
  end
end
