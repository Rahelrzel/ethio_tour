import 'dart:ffi';

import 'package:abushakir/abushakir.dart';
import 'package:ethio_tour/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalendarConverterPage extends HookConsumerWidget {
  const CalendarConverterPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sc = useScrollController();
    var now = ETC.today();
    return Scaffold(
      backgroundColor: KPrimary.shade800,
      appBar: AppBar(
        foregroundColor: KAccentColor.shade400,
        backgroundColor: KPrimary.shade800,
        title: const Text('Calendar Converter'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: KPrimary.shade500,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Ethiopian Date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListWheelScrollView(
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                onSelectedItemChanged: (value) => print(value),
                                children:
                                    List.generate(30, (index) => index + 1)
                                        .map(
                                          (e) => Center(
                                            child: Text(
                                              '$e',
                                              style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListWheelScrollView(
                                itemExtent: 30,
                                diameterRatio: 1.2,
                                onSelectedItemChanged: (value) {
                                  sc.animateTo(3 * 30,
                                      duration:
                                          const Duration(microseconds: 300),
                                      curve: Curves.linear);
                                },
                                children: now.allMonths
                                    .map(
                                      (e) => Center(
                                        child: Text(
                                          '$e',
                                          style: const TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListWheelScrollView.useDelegate(
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                onSelectedItemChanged: (value) {},
                                childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (context, index) {
                                    return Center(
                                      child: Text(
                                        '${index + 2000}',
                                        style: const TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
