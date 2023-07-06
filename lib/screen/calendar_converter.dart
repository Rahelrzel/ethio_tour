import 'package:abushakir/abushakir.dart';
import 'package:ethio_tour/config/colors.dart';
import 'package:ethio_tour/data/calendar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalendarConverterPage extends HookConsumerWidget {
  CalendarConverterPage({super.key});
  EtDatetime now = EtDatetime.now();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cDate = useState(1);
    var cYear = useState(2000);
    var cMonth = useState(1);

    var gDate = useState(1);
    var gYear = useState(2000);
    var gMonth = useState(1);

    var currentDate =
        EtDatetime(year: cYear.value, month: cMonth.value, day: cDate.value);

    var etc = ETC(year: cYear.value, month: cMonth.value, day: cDate.value);

    var gc = DateTime.fromMillisecondsSinceEpoch(currentDate.moment);

    var selectedGC = DateTime(gYear.value, gMonth.value, gDate.value);
    var convertedEC = EtDatetime.fromMillisecondsSinceEpoch(
        selectedGC.millisecondsSinceEpoch);

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
                                borderRadius: BorderRadius.horizontal(
                                    left: const Radius.circular(20)),
                              ),
                              child: ListWheelScrollView(
                                // controller: ecDate,
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                onSelectedItemChanged: (value) {
                                  print(value);
                                  cDate.value = value + 1;
                                },
                                children: etc.dayNumbers
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
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: KPrimary.shade900,
                              ),
                              child: ListWheelScrollView(
                                itemExtent: 30,
                                diameterRatio: 1.2,
                                onSelectedItemChanged: (value) {
                                  cMonth.value = value + 1;
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
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(20)),
                              ),
                              child: ListWheelScrollView.useDelegate(
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                onSelectedItemChanged: (value) {
                                  cYear.value = value + 2000;
                                },
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
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "GC: ${gc.day}/${gc.month}/${gc.year}",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: KPrimary.shade500,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Gregorian Date",
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
                              decoration: const BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20)),
                              ),
                              child: ListWheelScrollView(
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                onSelectedItemChanged: (value) =>
                                    gDate.value = value + 1,
                                children: List.generate(
                                        DateTime(selectedGC.year,
                                                selectedGC.month + 1, 0)
                                            .day,
                                        (index) => index + 1)
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
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: KPrimary.shade900,
                              ),
                              child: ListWheelScrollView(
                                itemExtent: 30,
                                diameterRatio: 1.2,
                                onSelectedItemChanged: (value) {
                                  gMonth.value = value + 1;
                                },
                                children: CalendarData.gcMonths
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
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: KPrimary.shade900,
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(20)),
                              ),
                              child: ListWheelScrollView.useDelegate(
                                itemExtent: 30,
                                diameterRatio: 1.1,
                                useMagnifier: true,
                                onSelectedItemChanged: (value) {
                                  gYear.value = value + 2001;
                                },
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
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "EC: ${convertedEC.day}/${convertedEC.month}/${convertedEC.year}",
                      style: TextStyle(fontSize: 30, color: Colors.white),
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
