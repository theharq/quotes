require 'rails_helper'

RSpec.describe Quote, type: :model do
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_presence_of(:author) }
  it { is_expected.to validate_presence_of(:genre) }
end
