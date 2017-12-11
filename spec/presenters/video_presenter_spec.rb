require 'rails_helper'

RSpec.describe 'VideoPresenter', type: :presenter do
  let (:video) {
    build_stubbed :video,
    youtube_url: 'https://www.youtube.com/watch?v=AeZ6a1A0-ow'
  }
  let (:presenter) { VideoPresenter.new(video) }

  describe '#youtube_id' do
    context 'when the url is a typical YouTube URL' do
      it 'should return the video ID from youtube_url' do
        expected_id = 'AeZ6a1A0-ow'
        expect(presenter.youtube_id).to eq expected_id
      end
    end
  end
end
