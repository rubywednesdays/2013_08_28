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
      point_numbers = [4,5,6,8,9,10]
      
      it "if roll is a point_number" do
        point_numbers.each do |point_number|
          game.roll = point_number
          game.status
          expect(game.point).to eq(point_number)
        end
      end

    end
  end

  it "can have a point set"

  it "keeps track of what roll it is"
end