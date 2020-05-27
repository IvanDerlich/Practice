def sum x , y
  x + y
end

describe "sum" do
  it "5 + 9 = 14" do
    expect(
      sum(5,9)
    ).to be(14)
  end
  it "5 + 9 = 14" do
    expect(sum(5,9)).not_to be(13)
  end
end