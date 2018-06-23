require './chess.rb'

describe 'pawn' do
  let(:pawn){Pawn.new(["a", 2])}

  it 'creates a instance of a pawn' do
    expect(pawn).to be_instance_of(Pawn)
  end

  it 'has a position' do
    expect(pawn.position).to eq ["a", 2]
  end

  it 'has moves' do
    expect(pawn.moves).to be_kind_of(Array)
  end
end

