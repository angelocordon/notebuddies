require 'rails_helper'

RSpec.describe Video, type: :model do
  let(:video) { build_stubbed :video }

  it { should validate_uniqueness_of(:youtube_url) }
end
