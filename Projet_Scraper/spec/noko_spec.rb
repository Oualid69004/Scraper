require_relative '../lib/noko.rb'

describe "the crypto_symbol function" do
  it "display crypto_symbol" do
    coin=Array.new
    t = retrieve_symbols(coin)

    expect(t.count).to eq(909)
  end
end

describe "the crypto pricies function" do
  it "display crypto pricies" do
      price=Array.new
      p= retrieve_pricies(price)
    expect(p.count).to eq(909)
  end



  it "says hello to someone else" do
    tab1 = Array.new
    tab2 = Array.new
    expect(zip_tap(retrieve_symbols(tab1), retrieve_pricies(tab2)).count).to eq(909)
  end
end
