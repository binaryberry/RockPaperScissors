require 'player'

describe Player do 
	let(:player) {Player.new("Stephen")}
	it "has a name" do
		expect(player.name).to eq"Stephen"
	end

	it "can make a pick" do 
		player.picks = "Ninja"
		expect(player.pick).to eq("Ninja")
	end




end
