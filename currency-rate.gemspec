# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: currency-rate 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "currency-rate"
  s.version = "0.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Roman Snitko"]
  s.date = "2017-02-06"
  s.description = "Fetches exchange rates from various sources and does the conversion"
  s.email = "roman.snitko@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "currency-rate.gemspec",
    "lib/adapter.rb",
    "lib/btc_adapter.rb",
    "lib/btc_adapters/average_rate_adapter.rb",
    "lib/btc_adapters/bitfinex_adapter.rb",
    "lib/btc_adapters/bitpay_adapter.rb",
    "lib/btc_adapters/bitstamp_adapter.rb",
    "lib/btc_adapters/btcchina_adapter.rb",
    "lib/btc_adapters/btce_adapter.rb",
    "lib/btc_adapters/coinbase_adapter.rb",
    "lib/btc_adapters/huobi_adapter.rb",
    "lib/btc_adapters/kraken_adapter.rb",
    "lib/btc_adapters/localbitcoins_adapter.rb",
    "lib/btc_adapters/okcoin_adapter.rb",
    "lib/core_ext/deep_get.rb",
    "lib/currency_rate.rb",
    "lib/fiat_adapter.rb",
    "lib/fiat_adapters/fixer_adapter.rb",
    "lib/fiat_adapters/yahoo_adapter.rb",
    "lib/storage.rb",
    "spec/currency_rate_spec.rb",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/average_rate_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/bitfinex_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/bitpay_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/btcchina_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/btce_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/coinbase_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/huobi_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/kraken_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/localbitcoins_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/btc_adapters/okcoin_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/fiat_adapters/fixer_adapter.yml",
    "spec/fixtures/vcr/exchange_rate_adapters/fiat_adapters/yahoo_adapter.yml",
    "spec/lib/btc_adapter_spec.rb",
    "spec/lib/btc_adapters/average_rate_adapter_spec.rb",
    "spec/lib/btc_adapters/bitfinex_adapter_spec.rb",
    "spec/lib/btc_adapters/bitpay_adapter_spec.rb",
    "spec/lib/btc_adapters/bitstamp_adapter_spec.rb",
    "spec/lib/btc_adapters/btcchina_adapter_spec.rb",
    "spec/lib/btc_adapters/btce_adapter_spec.rb",
    "spec/lib/btc_adapters/coinbase_adapter_spec.rb",
    "spec/lib/btc_adapters/huobi_adapter_spec.rb",
    "spec/lib/btc_adapters/kraken_adapter_spec.rb",
    "spec/lib/btc_adapters/localbitcoins_adapter_spec.rb",
    "spec/lib/btc_adapters/okcoin_adapter_spec.rb",
    "spec/lib/fiat_adapters/fixer_adapter_spec.rb",
    "spec/lib/fiat_adapters/yahoo_adapter_spec.rb",
    "spec/lib/storage_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/snitko/currency-rate"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Converter for fiat and crypto currencies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<satoshi-unit>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.1.1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
    else
      s.add_dependency(%q<satoshi-unit>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.1.1"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
    end
  else
    s.add_dependency(%q<satoshi-unit>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.1.1"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
  end
end

