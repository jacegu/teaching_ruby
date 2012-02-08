$: << File.expand_path(File.dirname(__FILE__))

require 'array2'

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

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '#length' do
    it 'returns the length of the array' do
      array2.length.should eq 8
    end
  end

  describe '#at index' do
    it 'returns the element if there is an element with that index' do
      array2.at(-1).should eq 8
    end

    it 'returns nil if there is no element with that index' do
      array2.at(10).should be_nil
    end
  end

  describe '#insert index, element' do
    let(:object) { 'new element' }

    before{ array2.insert(7, object) }

    it 'inserts the object at the given position' do
      array2.at(7).should be object
    end

    it 'shifts the elements from index to the last one to the right' do
      array2.at(6).should eq 4
      array2.at(8).should eq 8
    end

    it 'returns self' do
      array2.insert(7, object).should be array2
    end
  end

  describe '#delete_at index' do
    it 'deletes the element at given position if any' do
      array2.delete_at(0)
      array2.at(0).should eq 'a'
      array2.length.should eq 7
    end

    it 'returns the element if there was an element with that index' do
      array2.delete_at(0).should eq 1
    end

    it 'returns nil if ther was no element with that index 'do
      array2.delete_at(99).should eq nil
    end
  end

end
