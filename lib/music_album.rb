require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  # rubocop:disable Metrics/ParameterLists

  def initialize(genre, author, source, label, publish_date, on_spotify)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  # rubocop:enable Metrics/ParameterLists

  def can_be_archived?()
    return true if super && on_spotify
  end
end