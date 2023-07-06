import 'package:ethio_tour/config/colors.dart';
import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String dropdownValue = 'Option 1';
  TextEditingController fromcontroller = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KPrimary.shade800,
      appBar: AppBar(
        title: Text(
          'currency',
          style: TextStyle(color: KAccentColor.shade200),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        color: KPrimary.shade900,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            underline: Container(),
                            borderRadius: BorderRadius.circular(30),
                            padding: EdgeInsets.all(1),
                            dropdownColor: KPrimary.shade900,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                if (newValue != null) {
                                  dropdownValue = newValue;
                                }
                              });
                            },
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: fromcontroller,
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        color: KPrimary.shade900,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            underline: Container(),
                            borderRadius: BorderRadius.circular(30),
                            padding: EdgeInsets.all(1),
                            dropdownColor: KPrimary.shade900,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                if (newValue != null) {
                                  dropdownValue = newValue;
                                }
                              });
                            },
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: fromcontroller,
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.count(
                shrinkWrap: true,
                childAspectRatio: 1.156,
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildButton('7'),
                  _buildButton('8'),
                  _buildButton('9'),
                  _buildButton('back', Icons.backspace),
                  _buildButton('4'),
                  _buildButton('5'),
                  _buildButton('6'),
                  _buildButton('c'),
                  _buildButton('1'),
                  _buildButton('2'),
                  _buildButton('3'),
                  _buildButton('exchenge', Icons.currency_exchange, true),
                  _buildButton('0'),
                  _buildButton('.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String buttonText, [IconData? icon, bool? primary]) {
    return SizedBox(
      width: 30,
      height: 30,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(300),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            primary != null && primary == true
                ? KAccentColor.shade500
                : KPrimary.shade900,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: icon == null
              ? Text(
                  buttonText,
                  style: TextStyle(fontSize: 30.0),
                )
              : Icon(
                  icon,
                  color: primary != null && primary == true
                      ? KPrimary.shade900
                      : Color.fromARGB(255, 255, 255, 255),
                ),
        ),
        onPressed: () {
          if (buttonText == '.' && fromcontroller.text.contains('.')) {
            return;
          } else if (buttonText == 'back') {
            fromcontroller.text = fromcontroller.text
                .substring(0, fromcontroller.text.length - 2);
            return;
          } else if (buttonText == 'c') {
            fromcontroller.clear();
            return;
          }

          if (fromcontroller.text == "0") {
            fromcontroller.text = buttonText;
          } else {
            fromcontroller.text += buttonText;
          }
        },
      ),
    );
  }
}
