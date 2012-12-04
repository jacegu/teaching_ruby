require_relative 'array2'
require_relative 'array2_set1'

describe 'Array2 - Exercise Set 1' do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '#empty?' do
    it 'returns true if the array has no elements' do
      Array2.new.should be_empty
    end

    it 'returns false otherwise' do
      array2.should_not be_empty
    end
  end

  describe '#include? element' do
    it 'returns true if the array contains the element' do
      array2.should include 1
      array2.should include 'a'
      array2.should include 8
    end

    it 'returns false otherwise' do
      array2.should_not include 'z'
    end
  end

  describe '#index object' do
    it 'returns the index of the first element such that object == element' do
      array2.index('b').should eq 3
    end

    it 'returns nil if there is no such element' do
      array2.index('z').should eq nil
    end
  end

  describe '#clear' do
    it 'removes all elements from the array if the array has elements' do
      array2.clear
      array2.should be_empty
    end

    it 'dones nothing if the array is empty' do
      empty_array2 = Array2.new
      empty_array2.clear
      empty_array2.should be_empty
    end

    it 'returns self' do
      array2.clear.should be array2
    end
  end

  describe '#delete object' do
    context 'if the array contains elements equal to object' do
      it 'deletes all elements that equal to object' do
        array = Array2.new(1, 1, 1, 1)
        array.delete(1)
        array.should be_empty
      end

      it 'keeps the other elemens' do
        array = Array2.new(1, 2, 1, 3)
        array.delete(1)
        array.elements.should eq [2, 3]
      end

      it 'returns object if self included object' do
        Array2.new(1).delete(1).should eq 1
      end

      it 'returns nil if self did not include object' do
        Array2.new(1).delete(2).should be_nil
      end
    end

    context 'if the array contains no elements equal to object' do
      let(:array) { Array2.new(1,2) }

      it 'does not change the array' do
        array.delete('a')
        array.elements.should eq [1, 2]
      end

      it 'returns nil' do
        array.delete('b').should be_nil
      end
    end
  end

end
