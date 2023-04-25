require './item'

describe Item do
  let(:genre) { double('genre') }
  let(:author) { double('author') }
  let(:source) { double('source') }
  let(:label) { double('label') }

  describe '#initialize' do
    it 'creates a new item with genre, author, source, and label' do
      item = Item.new(genre, author, source, label)
      expect(item.genre).to eq genre
      expect(item.author).to eq author
      expect(item.source).to eq source
      expect(item.label).to eq label
    end
  end

  describe '#add_genre' do
    it 'adds a genre with the name "test" to item' do
      item = Item.new(genre, author, source, label)
      name = 'test'
      item.add_genre(name)
      expect(item.genre).to eq name
    end
  end
end
