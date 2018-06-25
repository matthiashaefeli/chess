require './chess.rb'

describe 'pawn' do
  let(:pawn) { Pawn.new([2, 'a']) }
  let(:pawntwo) { Pawn.new([8, 'a']) }

  it 'creates a instance of a pawn' do
    expect(pawn).to be_instance_of(Pawn)
  end

  it 'has a position' do
    expect(pawn.position).to eq [2, 'a']
  end

  it 'has moves' do
    expect(pawn.moves).to be_kind_of(Array)
  end

  it 'returns next posible moves' do
    expect(pawn.next_moves).to eq [[3, 'a']]
  end

  it 'returns an empty array if there is not a next posible move' do
    expect(pawntwo.next_moves).to eq []
  end
end

describe 'rook' do
  let(:rook) { Rook.new([1, 'a']) }
  let(:rooktwo) { Rook.new([4, 'd']) }

  it 'creates a instance of a rook' do
    expect(rook).to be_instance_of(Rook)
  end

  it 'has a position' do
    expect(rook.position).to eq [1, 'a']
  end

  it 'has moves' do
    expect(rook.moves).to be_kind_of(Array)
  end

  it 'returns next posible moves' do
    expect(rook.next_moves).to eq [[1, "b"], [1, "c"], [1, "d"],
                                   [1, "e"], [1, "f"], [1, "g"],
                                   [1, "h"], [2, "a"], [3, "a"], 
                                   [4, "a"], [5, "a"], [6, "a"], 
                                   [7, "a"], [8, "a"]]
  end

  it 'returns next possible moves' do
    expect(rooktwo.next_moves).to eq [[1, "d"], [2, "d"], [3, "d"],
                                      [4, "a"], [4, "b"], [4, "c"],
                                      [4, "e"], [4, "f"], [4, "g"],
                                      [4, "h"], [5, "d"], [6, "d"],
                                      [7, "d"], [8, "d"]]
  end
end

describe 'knight' do
  let(:knight) { Knight.new([1, 'b']) }
  let(:knighttwo) { Knight.new([4, 'd']) }

  it 'creates a instance of a knight' do
    expect(knight).to be_instance_of(Knight)
  end

  it 'has a position' do
    expect(knight.position).to eq [1, 'b']
  end

  it 'has moves' do
    expect(knight.moves).to be_kind_of(Array)
  end

  it 'returns next possible moves' do
    expect(knight.next_moves).to eq [[2, "d"], [3, "a"], [3, "c"]]
  end

  it 'returns next possible moves' do
    expect(knighttwo.next_moves).to eq [[2, "c"], [2, "e"], [3, "b"],
                                        [3, "f"], [5, "b"], [5, "f"], 
                                        [6, "c"], [6, "e"]]
  end
end

describe 'bishop' do
  let(:bishop) { Bishop.new([1, 'c']) }

  it 'creates a instance of a bishop' do
    expect(bishop).to be_instance_of(Bishop)
  end

  it 'has a position' do
    expect(bishop.position).to eq [1, 'c']
  end

  it 'has moves' do
    expect(bishop.moves).to be_kind_of(Array)
  end
end

describe 'queen' do
  let(:queen) { Queen.new([1, 'd']) }

  it 'creates a instance of a queen' do
    expect(queen).to be_instance_of(Queen)
  end

  it 'has a position' do
    expect(queen.position).to eq [1, 'd']
  end

  it 'has moves' do
    expect(queen.moves).to be_kind_of(Array)
  end
end

describe 'king' do
  let(:king) { King.new([1, 'e']) }

  it 'creates a instance of a king' do
    expect(king).to be_instance_of(King)
  end

  it 'has a position' do
    expect(king.position).to eq [1, 'e']
  end

  it 'has moves' do
    expect(king.moves).to be_kind_of(Array)
  end
end

describe 'board' do
  let(:board) { Board.new }

  it 'creates a instance of a board' do
    expect(board).to be_instance_of(Board)
  end

  it 'returns the board' do
    expect(board.all_squares.length).to eq 64
  end

  it 'returns true if the given square does exist on the board' do
    expect(board.include_square([1, 'a'])).to be true
  end

  it 'returns false if the given square does not exist on the board' do
    expect(board.include_square([10, 'a'])).to be false
  end

  it 'returns false if the given square does not exist on the board' do
    expect(board.include_square([2, 'i'])).to be false
  end
end
