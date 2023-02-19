import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '123';
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

class CoinData {
  Future getCoinData(String currency, String cryptoCurrency) async {
    String url =
        'https://rest.coinapi.io/v1/exchangerate/$cryptoCurrency/$currency?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      double rate = jsonDecode(response.body)['rate'];
      return rate;
    } else {
      print(response.statusCode);
      return response.statusCode;
    }
  }
}
