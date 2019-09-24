import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  CoinData({@required this.coin, @required this.currency});
  final String coin;
  final String currency;

  dynamic getCoinData() async {
    NetworkHelper networkHelper = NetworkHelper('$bitcoinAverageURL/$coin$currency');
    var coinData = await networkHelper.getData();
    print(coinData);
    return coinData;
  }
}
