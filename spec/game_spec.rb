require 'game' 

describe Game do 
	let(:player1) {double :player1, name: "Stephen"}
	let(:player2) {double :player2, name: "Enrique"}
	let(:game)    {Game.new(player1, player2)}

	it "has two players" do
		expect(game.players).to eq [player1, player2]
	end

	context 'when playing' do

		it 'player one picks ninja, player two picks cowboy' do
			allow(player1).to receive(:pick).and_return("Ninja")
			allow(player2).to receive(:pick).and_return("Cowboy")
			expect(game.winner).to eq player1
		end

		it 'player one picks bear, player two picks cowboy' do
			allow(player1).to receive(:pick).and_return("Bear")
			allow(player2).to receive(:pick).and_return("Cowboy")
			expect(game.winner).to eq player2
		end

		it "player one picks bear, player two picks ninja" do
			allow(player1).to receive(:pick).and_return("Bear")
			allow(player2).to receive(:pick).and_return("Ninja")
			expect(game.winner).to eq player1
		end

		it "can be a draw" do
			allow(player1).to receive(:pick).and_return("Bear")
			allow(player2).to receive(:pick).and_return("Bear")
			expect(game.winner).to eq "Draw"
		end

	end

end