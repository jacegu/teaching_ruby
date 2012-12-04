require_relative 'array2'
require_relative 'array2_set1'
require_relative 'array2_set2'
require_relative 'array2_set3'

describe 'Array2 - Exercise Set 3' do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '#join separator' do
    it 'returns a string with the elements of the array joined by the separator' do
      array2.join('_').should eq "1_a_2_b_3_c_4_8"
    end

    it 'uses empty string as separator if none provided' do
      array2.join.should eq "1a2b3c48"
    end

    it 'works with empty arrays' do
      Array2.new.join.should eq ""
      Array2.new.join('_').should eq ""
    end
  end

  describe '#first n' do
    context 'if n is provided' do
      it 'returns an empty array2 if self is empty' do
        Array2.new.first(5).should be_empty
      end

      it 'returns first n elements if the array has elements' do
        array2.first(2).elements.should eq [1, 'a']
      end

      it 'returns an empty array if n is 0' do
        array2.first(0).should be_empty
      end

      it 'raises a "negative array size" error if n is negative' do
        expect { array2.first(-4) }.to raise_error
      end
    end

    context 'if n is not provided' do
      it 'returns nil if self is empty' do
        Array.new.first.should be_nil
      end

      it 'returns the first element if the array has elements' do
        array2.first.should eq 1
      end
    end
  end

  describe '#last n' do
    context 'if n is provided' do
      it 'returns an empty array2 if self is empty' do
        Array2.new.last(3).should be_empty
      end

      it' returns the last n elements if the array has elements' do
        array2.last(4).elements.should eq [3, 'c', 4, 8]
      end


      it 'raises a "negative array size" error if n is negative' do
        expect { array2.first(-4) }.to raise_error
      end
    end

    context 'if n is not provided' do
      it 'returns nil if self is empty' do
        Array2.new.last.should be_nil
      end

      it 'returns the last element if the array elements' do
        array2.last.should eq 8
      end
    end
  end


end
