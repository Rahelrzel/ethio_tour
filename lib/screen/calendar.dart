import 'package:abushakir/abushakir.dart';
import 'package:ethio_tour/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  ETC current = ETC.today();
  ETC now = ETC.today();
  BahireHasab bh = BahireHasab();

  @override
  void initState() {
    super.initState();
    bh = BahireHasab(year: current.year);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var days = current.monthDays().toList();
    var startJump = days[0].last;
    var today = EtDatetime(year: now.year, day: now.day, month: now.month);

    var events = bh.allAtswamat
        .where(
          (element) => element['day']['month'] == current.monthName,
        )
        .toList();

    return Scaffold(
      backgroundColor: KPrimary.shade800,
      appBar: AppBar(
        foregroundColor: KAccentColor.shade400,
        backgroundColor: KPrimary.shade500,
        title: const Text('Ethiopian Calendar'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.push('/calendar/converter');
            },
            icon: const Icon(Icons.sync),
            color: KAccentColor.shade400,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: KPrimary.shade500,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      offset: const Offset(0, 5),
                      color: KPrimary.shade900.withOpacity(0.4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.prevMonth;
                            });
                          },
                          icon: const Icon(Icons.chevron_left),
                          iconSize: 30,
                          color: KAccentColor.shade400,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = now;
                            });
                          },
                          child: Text(
                            "${current.monthName} ${current.year}",
                            style: const TextStyle(
                              fontSize: 26,
                              color: KAccentColor.shade400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.nextMonth;
                            });
                          },
                          icon: const Icon(Icons.chevron_right),
                          iconSize: 30,
                          color: KAccentColor.shade400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: GridView.count(
                        crossAxisCount: 7,
                        children: now.weekdays
                            .map(
                              (e) => Center(
                                child: Text(
                                  '$e'.substring(0, 2),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: KAccentColor.shade300,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 7 * 40,
                      child: GridView.count(crossAxisCount: 7, children: [
                        ...List.filled(startJump, 0)
                            .map(
                              (e) => const Center(
                                child: Text(''),
                              ),
                            )
                            .toList(),
                        ...days
                            .map(
                              (e) => Container(
                                decoration: BoxDecoration(
                                  color: today.compareTo(fromArray(e)) == 0
                                      ? KPrimary.shade700
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '${e[2]}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: KAccentColor.shade400,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Events",
                style: TextStyle(
                  fontSize: 24,
                  color: KAccentColor.shade500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: events.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: const Icon(
                      Icons.circle_notifications_rounded,
                      size: 30,
                    ),
                    iconColor: KAccentColor.shade400,
                    title: Text(
                      '${events[index]['beal']}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: KAccentColor.shade400,
                      ),
                    ),
                    subtitle: Text(
                      '${events[index]['day']['month']} ${events[index]['day']['date']}, ${current.year}',
                      style: const TextStyle(
                        color: KAccentColor.shade100,
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  EtDatetime fromArray(List<dynamic> date) {
    return EtDatetime(year: date[0], month: date[1], day: date[2]);
  }
}
