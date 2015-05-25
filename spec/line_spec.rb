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
end
