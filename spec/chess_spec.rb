require './chess.rb'

describe 'pawn' do
  let(:pawn) { Pawn.new(['a', 2]) }

  it 'creates a instance of a pawn' do
    expect(pawn).to be_instance_of(Pawn)
  end

  it 'has a position' do
    expect(pawn.position).to eq ['a', 2]
  end

  it 'has moves' do
    expect(pawn.moves).to be_kind_of(Array)
  end
end

describe 'rook' do
  let(:rook) { Rook.new(['a', 1]) }

  it 'creates a instance of a rook' do
    expect(rook).to be_instance_of(Rook)
  end

  it 'has a position' do
    expect(rook.position).to eq ['a', 1]
  end

  it 'has moves' do
    expect(rook.moves).to be_kind_of(Array)
  end
end

describe 'knight' do
  let(:knight) { Knight.new(['b', 1]) }

  it 'creates a instance of a knight' do
    expect(knight).to be_instance_of(Knight)
  end

  it 'has a position' do
    expect(knight.position).to eq ['b', 1]
  end

  it 'has moves' do
    expect(knight.moves).to be_kind_of(Array)
  end
end

describe 'bishop' do
  let(:bishop) { Bishop.new(['c', 1]) }

  it 'creates a instance of a bishop' do
    expect(bishop).to be_instance_of(Bishop)
  end

  it 'has a position' do
    expect(bishop.position).to eq ['c', 1]
  end

  it 'has moves' do
    expect(bishop.moves).to be_kind_of(Array)
  end
end

describe 'queen' do
  let(:queen) { Queen.new(['d', 1]) }

  it 'creates a instance of a queen' do
    expect(queen).to be_instance_of(Queen)
  end

  it 'has a position' do
    expect(queen.position).to eq ['d', 1]
  end

  it 'has moves' do
    expect(queen.moves).to be_kind_of(Array)
  end
end

describe 'king' do
  let(:king) { King.new(['e', 1]) }

  it 'creates a instance of a king' do
    expect(king).to be_instance_of(King)
  end

  it 'has a position' do
    expect(king.position).to eq ['e', 1]
  end

  it 'has moves' do
    expect(king.moves).to be_kind_of(Array)
  end
end
