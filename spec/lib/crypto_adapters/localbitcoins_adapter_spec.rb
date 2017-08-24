require 'spec_helper'

RSpec.describe CurrencyRate::LocalbitcoinsAdapter do

  before :each do
    VCR.insert_cassette 'exchange_rate_adapters/btc_adapters/localbitcoins_adapter'
  end

  after :each do
    VCR.eject_cassette
  end

  before(:each) do
    @exchange_adapter = CurrencyRate::LocalbitcoinsAdapter.instance
  end

  it "finds the rate for currency code" do
    expect(@exchange_adapter.rate_for('BTC', 'USD')).to eq(1420.45)
    expect(@exchange_adapter.rate_for('USD', 'BTC')).to eq(BigDecimal.new('0.000704002'))
    expect( -> { @exchange_adapter.rate_for('FEDcoin', 'USD') }).to raise_error(CurrencyRate::Adapter::CurrencyNotSupported)
  end

  it "rases exception if rate is nil" do
    json_response_1 = '{"USD": {}}'
    json_response_2 = '{"USD": {"volume_btc": "2277.85", "rates": {"bambo": "263.78"}, "avg_1h": 287.6003904801631, "avg_24h": 253.58144543993674, "avg_12h": 252.29202866050034}}'
    json_response_3 = '{"USD": {"volume_btc": "2277.85", "rates": {"last": null}, "avg_1h": 287.6003904801631, "avg_24h": 253.58144543993674, "avg_12h": 252.29202866050034}}'
    uri_mock = double('uri mock')
    allow(uri_mock).to receive(:read).with(read_timeout: 4).and_return(json_response_1, json_response_2, json_response_3)
    allow(URI).to      receive(:parse).and_return(uri_mock)
    3.times do
      @exchange_adapter.fetch_rates!
      expect( -> { @exchange_adapter.rate_for('FEDcoin', 'USD') }).to raise_error(CurrencyRate::Adapter::CurrencyNotSupported)
    end
  end

end