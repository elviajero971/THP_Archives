require_relative '../lib/coin_scrapping.rb'

describe "the coin_scrapping function" do

  it "should return final_crypto, and final_crypto is not nil" do
    expect(final_crypto).not_to be_nil
    expect(final_crypto).not_to be_eq(" ")
  end

  it "should return final_crypto" do
    expect(final_crypto).to eq(final_crypto.length > 10)
    expect(final_crypto[0]).to eq("BTC=>'$7,037.51")
  end

end