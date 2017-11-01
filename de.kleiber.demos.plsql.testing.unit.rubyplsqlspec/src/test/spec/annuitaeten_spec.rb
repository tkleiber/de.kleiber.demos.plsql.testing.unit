describe "Annuitaetenberechnung" do
  it "Normale Nutzung" do
    expect(plsql.annuitaeten.get_annuitaet(250000, 0.05, 10)).to eq(32376.14)
  end
end

