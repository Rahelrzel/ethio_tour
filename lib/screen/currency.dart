import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Currency extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<Currency> {
  final TextEditingController _amountController = TextEditingController();
  String _baseCurrency = 'USD';
  String _targetCurrency = 'EUR';
  String _convertedAmount = '';

  Future<void> convertCurrency() async {
    final apiKey = 'f2ea75a09807b011cff83a092039eabd';
    final url = Uri.parse(
        'https://v6.exchangeratesapi.io/latest?base=$_baseCurrency&symbols=$_targetCurrency&access_key=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final rates = responseData['rates'];
      final rate = rates[_targetCurrency];
      final amount = double.tryParse(_amountController.text) ?? 0.0;

      setState(() {
        _convertedAmount = (amount * rate).toStringAsFixed(2);
      });
    } else {
      print('Failed to fetch exchange rates');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    value: _baseCurrency,
                    onChanged: (value) {
                      setState(() {
                        _baseCurrency = value!;
                      });
                    },
                    items: ['USD', 'EUR', 'GBP', 'CAD', 'AUD'].map((currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward),
                SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    value: _targetCurrency,
                    onChanged: (value) {
                      setState(() {
                        _targetCurrency = value!;
                      });
                    },
                    items: ['USD', 'EUR', 'GBP', 'CAD', 'AUD'].map((currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertCurrency,
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            Text(
              'Converted Amount: $_convertedAmount $_targetCurrency',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
