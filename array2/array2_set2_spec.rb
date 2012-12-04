require_relative 'array2'
require_relative 'array2_set1'
require_relative 'array2_set2'

describe 'Array2 - Exercise Set 2' do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '#concat other_array2' do
    it 'appends the other array2 to self' do
      array = Array2.new(1, 2, 3)
      other_array = Array2.new('z', 'y')
      array.concat(other_array).elements.should eq [1, 2, 3, 'z', 'y']
    end

    it 'works when appending an empty array' do
      array2.concat(Array2.new).elements.should eq array2.elements
    end
  end

  describe '#drop n' do
    it 'removes the first n elemens from self' do
      array2.drop(7).elements.should eq [8]
      array2.drop(0).elements.should eq array2.elements
    end

    it 'drops nothing when self is empty' do
      Array2.new.drop(10).should be_empty
    end

    it 'removes all elements when n is bigger than the lenght of self' do
      array2.drop(10).should be_empty
    end

    it 'raises error if n is negative' do
      expect { array2.drop(-4) }.to raise_error
    end
  end

  describe '#compact' do
    let(:array_with_nils) { Array2.new(1, nil, 2, nil, 3) }

    it 'returns an Array2 with all the nil values from self removed' do
      array_with_nils.compact.elements. should eq [1, 2, 3]
      array2.compact.elements.should eq array2.elements
    end

    it "does not change self's elements" do
      array_with_nils.compact
      array_with_nils.elements.should eq [1, nil, 2, nil, 3]
    end
  end

  describe '#uniq' do
    it 'returns a new array with the different elements in self' do
      Array2.new(1, 2, 3, 1, 3, 2, 4).uniq.elements.should eq [1, 2, 3, 4]
    end

    it "does not change self's elements" do
      array = Array2.new(1, 1, 1)
      array.uniq
      array.elements.should eq [1, 1, 1]
    end
  end

  describe '#reverse' do
    it 'returns a new array with the elements of self in reverse order' do
      Array2.new(3, 2, 1).reverse.elements.should eq [1, 2, 3]
    end

    it "does not change self's elements" do
      array = Array2.new(1, 2, 3)
      array.reverse
      array.elements.should eq [1, 2, 3]
    end
  end

end
