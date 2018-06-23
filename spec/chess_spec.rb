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
