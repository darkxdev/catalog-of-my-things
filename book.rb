require './item'

class Book < Item
  attr_reader :publisher, :cover_state

  # rubocop:disable Metrics/ParameterLists
  def initialize(genre, author, source, label, publish_date, publisher, cover_state)
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end
  # rubocop:enable Metrics/ParameterLists
end