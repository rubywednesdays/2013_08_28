require 'game'

describe Game do
  let(:game) { Game.new }

  it "prints a start message"

  context "first roll" do
    before(:each) do
      game.first_roll = true
    end
    
    context "wins" do
      it "if roll is a 7" do
        game.roll = 7

        expect(game.status).to eq('won')
      end

      it "if roll is a 11" do
        game.roll = 11
        
        expect(game.status).to eq('won')
      end 
    end

    context "loses" do
      it "if roll is a 2" do        
        game.roll = 2
        
        expect(game.status).to eq('lost')
      end

      it "if roll is a 3" do        
        game.roll = 3
        
        expect(game.status).to eq('lost')
      end

      it "if roll is a 12" do        
        game.roll = 12
        
        expect(game.status).to eq('lost')
      end
    end

    context "sets the point" do
      it "if roll is a 4" do
        game.roll = 4
        
        expect(game.point).to eq(4)
      end

      it "if roll is a 5" do
        game.roll = 5
        
        expect(game.point).to eq(5)
      end

      it "if roll is a 6" do
        game.roll = 6
        
        expect(game.point).to eq(6)
      end

      it "if roll is a 8" do
        game.roll = 8
        
        expect(game.point).to eq(8)
      end

      it "if roll is a 9" do
        game.roll = 9
        
        expect(game.point).to eq(9)
      end

      it "if roll is a 10" do
        game.roll = 10
        
        expect(game.point).to eq(10)
      end
    end
  end

  it "can have a point set"

  it "keeps track of what roll it is"
end