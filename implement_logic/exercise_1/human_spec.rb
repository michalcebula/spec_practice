require './human.rb'

RSpec.describe Human do
  describe '#introduce_yourself' do
    subject { human.introduce_yourself }

    let(:human) { described_class.new(name: name, surname: surname) }
    let(:name) { 'michal' }
    let(:surname) { 'cebula' }

    it { is_expected.to eq 'my names is ' + name + surname }

    shared_examples 'failed_introduction' do
      it 'apologizes for not having full name' do
        expect(subject).to eq 'sorry bro my name aint full, can no do'
      end
    end

    context 'when name is nil' do
      let(:name) { nil }

      it_behaves_like 'failed_introduction'
    end

    context 'when surname is nil' do
      let(:surname) { nil }

      it_behaves_like 'failed_introduction'
    end
  end
end
