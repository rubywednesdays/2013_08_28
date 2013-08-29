require 'die'

describe Die do
  it "rolls a number" do
    expect(Die.new.roll).to be_an_integer
  end

  it "rolls less than 7" do
    expect(Die.new.roll < 7).to be_true
  end

  it "doesn't roll 0 or less" do
    expect(Die.new.roll > 0).to be_true
  end
end