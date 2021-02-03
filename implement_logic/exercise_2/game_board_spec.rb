require './game_board.rb'

RSpec.describe GameBoard do
  describe '#generate_board' do
    subject { board.generate_board }

    let(:board) { described_class.new }

    shared_examples 'standard game board the size of' do |given_size|
      it 'returns generated board of fields', :aggregate_failures do
        # we use aggregate_failures option when we have multiple
        # `expect`s in one `it` block
        expect(subject).to be_an Array
        expect(subject.count).to eq given_size

        subject.each do |object|
          expect(object).to be_an Array
          expect(object.count).to eq given_size
          expect(object.all? { |element| element.class == Field } ).to eq true
        end
      end
    end

    it_should_behave_like 'standard game board the size of', 5

    context 'when custom size provided' do
      subject { board.generate_board(size: 10) }

      it_should_behave_like 'standard game board the size of', 10
    end
  end
end
