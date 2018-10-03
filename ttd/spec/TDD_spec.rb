require "rspec"
require "TDD_project"
require "game"

describe 'Array#my_uniq' do
  let(:arr) { Array.new }
  #my_uniq
  # describe '#my_uniq' do
  #return new array
  #return new array with no dups
  #does not use .uniq in body of cod
  # let(:unique_test) { [1, 2, 1, 3, 3] }
  # arr = [1, 2, 1, 3, 3]
    it '#returns new array ' do
      expect(arr.my_uniq).to be_a(Array)
    end
    it '#returns a new array with no duplicates' do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 1, 3, 3].uniq)
    end
    it '#does not use native ruby ".uniq" enumerable' do
      # original_array = [1, 2, 1, 3, 3]
      expect_any_instance_of(Array).not_to receive(:uniq)
      arr.my_uniq
    end

  # end
end


describe 'Array#two_sum' do
  let(:arr) { Array.new }
    it '#returns new array' do
      expect(arr.my_uniq).to be_a(Array)
    end
    it '#returns a new array with indices of elements that sum to zero' do
      expect([1, 2, -1, -2, 3].two_sum).to eq([[0, 2], [1, 3]])
    end
end


describe '#my_transpose' do
  rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

  cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

  it '#returns new array' do
    expect(my_transpose(rows)).to be_a(Array)
  end
  it '#transposes an array' do
    expect(my_transpose(rows)).to eq(cols)
  end
  it '#does not use native ruby ".transpose" enumerable' do
    expect(my_transpose(rows)).not_to receive(:transpose)
    my_transpose(rows)
  end
end


describe "Array#stock_picker" do
  let(:arr) { Array.new }

  it '#returns new array ' do
    expect(arr.stock_picker).to be_a(Array)
  end
  it '#returns days of most profitable stocks' do
    weekly_stock_values = [3, 7, 5, 10, 30, 12]
    expect(weekly_stock_values.stock_picker).to eq([4, 0])
  end
end



describe "Game" do
  # let(:arr) { Array.new }
  # it "makes three arrays" do
  #   expect(arr).to include?( Array.new(3) { Array.new(3) } )
  # end

  subject(:game) { Game.new }

  # let(:towers) { double('towers') }

  describe "#move" do
    it "moves a disc from one tower to another" do
      game.move(0, 1)
      expect(game.towers).to eq([[3, 2], [1], []])
    end
  end

  describe "#is_valid_move?" do
    it "tests if we're trying to move a bigger disc onto a smaller disk." do
      game.towers = [[3,2], [1], []]
      expect(game.move).to raise("Invalid move")
      game.move(0, 1)
    end

    # it "checks if your trying to move a disk that can't be moved." do
    #   game.towers ==
    # end
  end

  # describe "#won?" do
  #   allow(:ijqb3r)
  #   expect(towers).to eq()
  # end
end
