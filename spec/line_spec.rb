require "spec_helper"

describe 'Line' do
  it "should declare a line object with 2 points" do
    line = Line.new([1,1],[2,2])
    expect(line.start_point).to eq([1,1])
    expect(line.end_point).to eq([2,2])
  end

  it "should return length of line" do
    line = Line.new [0,0], [3,4]
    expect(line.length).to eq(5)
  end

  describe "equlity" do
    it "should be equal" do
      line1 = Line.new [0,0], [3,4]
      line2 = Line.new [0,0], [3,4]
      expect(line1 == line2).to eq(true)
    end

    it "should not be equal" do
      line1 = Line.new [0,0], [3,4]
      line2 = Line.new [1,1], [2,2]
      expect(line1 == line2).not_to eq(true)
    end

    it "should be reflexive" do
      line1 = Line.new [0,0], [3,4]
      expect(line1 == line1).to eq(true)
    end

    it "should be symetric" do
      line1 = Line.new [0,0], [3,4]
      line2 = Line.new [3,4], [0,0]
      expect(line1 == line2).to eq(true)
      expect(line2 == line1).to eq(true)
    end
  end
end
