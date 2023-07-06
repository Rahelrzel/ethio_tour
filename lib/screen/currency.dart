import 'package:ethio_tour/config/colors.dart';
import 'package:ethio_tour/controller/categories/currency_controller.dart';
import 'package:ethio_tour/data/currency_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CurrencyConverter extends HookConsumerWidget {
  const CurrencyConverter({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    final fromController = useTextEditingController(text: "0");
    final toController = useTextEditingController();
    final from = useState("ETB");
    final to = useState('USD');

    final exchangeRate = ref.watch(rateProvider(
      have: from.value,
      want: to.value,
    ));
    if (exchangeRate.isLoading) {
      toController.text = 'Loading Rate';
    }

    if (exchangeRate.asData != null) {
      toController.text =
          (double.parse(fromController.text) * exchangeRate.value!)
              .toStringAsFixed(2);
    }
    return Scaffold(
      backgroundColor: KPrimary.shade800,
      appBar: AppBar(
        title: const Text(
          'Currency',
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
                            value: from.value,
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                from.value = newValue;
                              }
                            },
                            items: mostUsedCurrencies
                                .map<DropdownMenuItem<String>>(
                              (value) {
                                return DropdownMenuItem<String>(
                                  value: value["code"],
                                  child: Text(
                                    "${value['name']} (${value["code"]!})",
                                    style: const TextStyle(color: Colors.white),
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
                controller: fromController,
                enabled: false,
                textDirection: TextDirection.rtl,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                            value: to.value,
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                to.value = newValue;
                              }
                            },
                            items: mostUsedCurrencies
                                .map<DropdownMenuItem<String>>(
                              (value) {
                                return DropdownMenuItem<String>(
                                  value: value["code"],
                                  child: Text(
                                    "${value["name"]} (${value["code"]})",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: toController,
                enabled: false,
                textDirection: TextDirection.rtl,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                shrinkWrap: true,
                childAspectRatio: 1.156,
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildButton('7', fromController),
                  _buildButton('8', fromController),
                  _buildButton('9', fromController),
                  _buildButton('back', fromController, Icons.backspace),
                  _buildButton('4', fromController),
                  _buildButton('5', fromController),
                  _buildButton('6', fromController),
                  _buildButton('c', fromController),
                  _buildButton('1', fromController),
                  _buildButton('2', fromController),
                  _buildButton('3', fromController),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(300),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(KAccentColor.shade500),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.currency_exchange,
                          color: KPrimary.shade900),
                    ),
                    onPressed: () {
                      if (exchangeRate.isLoading) {
                        toController.text = 'Loading Rate';
                        return;
                      }
                      if (exchangeRate.asData != null) {
                        toController.text = (double.parse(fromController.text) *
                                exchangeRate.value!)
                            .toStringAsFixed(2);
                      }
                    },
                  ),
                  _buildButton('0', fromController),
                  _buildButton('.', fromController),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String buttonText, TextEditingController fromcontroller,
      [IconData? icon, bool? primary]) {
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
            if (fromcontroller.text.length > 1) {
              fromcontroller.text = fromcontroller.text
                  .substring(0, fromcontroller.text.length - 1);
            } else {
              fromcontroller.text = '0';
            }
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
