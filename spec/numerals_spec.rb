require "numerals"

describe Num do
 it "conv responds" do
    is_expected.to respond_to(:conv).with(1).argument
 end

  it "returns expected roman numerals for 3,5,8" do
    expect(Num.new.conv(3)).to eq("III")
    expect(Num.new.conv(5)).to eq("V")
    expect(Num.new.conv(8)).to eq("VIII")
    expect(Num.new.conv(10)).to eq("X")

  end

  it "returns expected roman numerals for 33,57,91" do
    expect(Num.new.conv(33)).to eq("XXXIII")
    expect(Num.new.conv(57)).to eq("LVII")
    expect(Num.new.conv(91)).to eq("XCI")
  end

  it "returns expected roman numerals for 100,500,555" do
    expect(Num.new.conv(100)).to eq("C")
    expect(Num.new.conv(500)).to eq("D")
    expect(Num.new.conv(555)).to eq("DLV")
  end

  it "returns expected roman numerals for 3999,2000,2001" do
    expect(Num.new.conv(3999)).to eq("MMMCMXCIX")
    expect(Num.new.conv(2000)).to eq("MM")
    expect(Num.new.conv(2001)).to eq("MMI")
  end


end
