require 'spec_helper'

describe Array do


  describe 'instance methods' do
    subject { [[1, 2, 3],[4, 5, 6]] }

    describe 'generated method' do

      describe '#grab_every_first_element' do
        it 'returns the correct element' do
          expect(subject.grab_every_first_element).to eq [1,4]
        end
      end

      describe '#grab_every_second_element' do
        it 'returns the correct element' do
          expect(subject.grab_every_second_element).to eq [2,5]
        end
      end

      describe '#grab_every_third_element' do
        it 'returns the correct element' do
          expect(subject.grab_every_third_element).to eq [3,6]
        end
      end

    end
  end

  describe 'class methods' do
    describe '.ordinal_words_array' do
      subject { Array.ordinal_words_array }

      it 'returns an array with 30 elements' do
        expect(subject.count).to eq 30
      end

      it 'contains an element for twenty_first' do
        expect(subject).to include('twenty_first')
      end
    end

    describe '.ordinal_range_array' do
      subject { Array.ordinal_range_array }

      it 'contains 30 elements' do
        expect(subject.count).to eq 30
      end

      it 'does not contain a zero' do
        expect(subject).to_not include(0)
      end
    end

    describe '.max_ordinal_number' do
      subject { Array.max_ordinal_number }

      it 'returns 30' do
        expect(subject).to eq 30
      end
    end
  end


end
