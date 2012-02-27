require_relative 'array2'

describe Array2 do

  describe '::new' do
    it 'is created with a set of elements' do
      Array2.new(1, 2, 3).elements.should eq [1, 2, 3]
    end

    it 'is created with no elements if none specified' do
      Array2.new.elements.should eq []
    end

    it 'handles any number of elements' do
      Array2.new(1, 2, 3, 4, 5).elements.should eq [1, 2, 3, 4, 5]
    end
  end

  describe '::[elements]' do
    it 'creates an empty Array2 if no element is provided' do
      Array2[].elements.should be_empty
    end

    it 'creates a new Array2 with provided elements' do
      Array2[1, 'a'].elements.should eq [1, 'a']
    end

    it 'handles any number of elements' do
      Array2[1, 2, 3, 4, 5].elements.should eq [1, 2, 3, 4, 5]
    end
  end

  let(:array2) { Array2[1, 'a', 2, 'b'] }

  describe '#== object' do
    context 'if object is an Array2 instance' do
      it 'returns true if it has the same elements and in the same order as self' do
        other_array2 = Array2[1, 'a', 2, 'b']
        array2.should == other_array2
      end

      it 'returns false otherwise' do
        other_array2 = Array2['b', 'a', 2, 1]
        array2.should_not == other_array2
      end
    end

    context 'if object is not an instance of Array2' do
      it 'returns false' do
        array2.should_not == [1, 'a', 2, 'b']
      end
    end
  end

  describe '#length' do
    it 'returns number of elements in the array' do
      array2.length.should eq 4
    end

    it 'returns 0 if the array is empty' do
      Array2.new.length.should eq 0
    end
  end

  describe '#at index' do
    it 'returns the element if there is an element with that index' do
      array2.at(2).should eq 2
    end

    it 'returns nil if there is no element with that index' do
      array2.at(10).should be_nil
    end

    it 'it starts counting from the end if index is negative' do
      array2.at(-1).should eq 'b'
    end
  end

=begin
  describe '#insert index, object' do
    let(:index)  { 2 }
    let(:object) { 'new element' }
    let(:array)  { array2 }

    context 'if there is an element with given index' do
      before{ array.insert(index, object) }

      it 'inserts the object at the given position' do
        array.at(index).should be object
      end

      it 'shifts the elements from index to the end to the right' do
        array.at(1).should eq 'a'
        array.at(3).should eq 2
        array.at(4).should eq 'b'
      end

      it 'returns self' do
        array.insert(index, object).should be array
      end
    end

    context 'if there is no such index at array' do
      it 'inserts the element there and feels the empty positions with nil' do
        array.insert(6, object)
      end
    end

    context 'with negative indexes' do
      context 'if there is an element with that index' do
        it 'behaves as if the index were positive' do

        end
      end

      context 'if there is no element with that index' do
        it 'raises an error'
      end
    end
  end

  describe '#delete_at index' do
    it 'deletes the element at given position if any' do
      array2.delete_at(0)
      array2.at(0).should eq 'a'
      array2.length.should eq 3
    end

    it 'returns the element if there was an element with that index' do
      array2.delete_at(0).should eq 1
    end

    it 'returns nil if ther was no element with that index 'do
      array2.delete_at(99).should eq nil
    end
  end
=end
end
