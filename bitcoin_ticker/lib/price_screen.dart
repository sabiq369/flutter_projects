// import 'dart:ffi';
// import 'dart:html';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';
  String cryptoCurrency = 'ETH';
  String rate = '55.25565';

  CoinData coinData = CoinData();

  CupertinoPicker getIosPicker() {
    List<Widget> cupertinoItems = [];
    for (String currency in currenciesList) {
      cupertinoItems.add(Text(currency));
    }
    return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (value) {
          print(cupertinoItems[value]);
          setState(() {
            selectedCurrency = currenciesList[value];
            getRate();
          });
        },
        children: cupertinoItems);
  }

  DropdownButton<String> getAndroidDropdownButton() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var items = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(items);
    }
    return DropdownButton(
      items: dropdownItems,
      value: selectedCurrency,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value.toString();
          getRate();
        });
      },
    );
  }

  Future getRate() async {
    double data = await coinData.getCoinData(selectedCurrency, cryptoCurrency);
    setState(() {
      rate = data.toStringAsFixed(2);
    });
    return data;
  }

  List<Widget> getCryptoCards() {
    List<Widget> cryptoCards = [];
    for (String crypto in cryptoList) {
      Widget card = Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto= $rate $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      );
      cryptoCards.add(card);
    }
    return cryptoCards;
  }

  @override
  void initState() {
    super.initState();
    getRate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('🤑 Coin Ticker'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              children: getCryptoCards(),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            // child: getAndroidDropdownButton(),
            child: Platform.isIOS ? getIosPicker() : getAndroidDropdownButton(),
          ),
        ],
      ),
    );
  }
}
