# Parse YoutubeID based from
# https://github.com/reu/youtube_id/blob/master/lib/youtube_id.rb
class VideoPresenter
  attr_reader :video

  delegate :title, to: :video

  FORMATS = [
    %r(https?://youtu\.be/(.+)),
    %r(https?://www\.youtube\.com/watch\?v=(.*?)(&|#|$)),
    %r(https?://www\.youtube\.com/embed/(.*?)(\?|$)),
    %r(https?://www\.youtube\.com/v/(.*?)(#|\?|$)),
    %r(https?://www\.youtube\.com/user/.*?#\w/\w/\w/\w/(.+)\b)
  ]

  def initialize(video)
    @video = video
  end

  def youtube_id
    url.strip!
    FORMATS.find { |format| url =~ format } and $1
  end

  private
  def url
    video.youtube_url
  end
end
