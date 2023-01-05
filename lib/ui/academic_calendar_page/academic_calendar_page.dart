import 'package:calendar_builder/calendar_builder.dart';
import 'package:flutter/material.dart';

class AcademicCalendarPage extends StatefulWidget {
  const AcademicCalendarPage({Key? key}) : super(key: key);

  @override
  State<AcademicCalendarPage> createState() => _AcademicCalendarPageState();
}

class _AcademicCalendarPageState extends State<AcademicCalendarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  bool isDarkMode = true;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Akademik Takvim"),
          centerTitle: true,
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: "Genel"),
              Tab(text: "Diş"),
              Tab(text: "Tıp")
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          label: Row(
            children: [
              Icon(!isDarkMode ? Icons.dark_mode : Icons.light_mode),
              Text(!isDarkMode ? "Karanlık Mod" : "Aydınlık Mode")
            ],
          ),
          onPressed: () {
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: CbMonthBuilder(
                cbConfig: CbConfig(
                    startDate: DateTime(2022),
                    endDate: DateTime(2024),
                    selectedDate: DateTime(2023, 1, 1),
                    selectedYear: DateTime(2023),
                    currentDay: getCurrentDay(),
                    weekStartsFrom: WeekStartsFrom.monday,
                    eventDates: [
                      DateTime(2023, 1, 8),
                      DateTime(2023, 1, 11),
                      DateTime(2023, 1, 22),
                      DateTime(2023, 1, 25),
                      DateTime(2023, 1, 30)
                    ]),
                monthCustomizer: MonthCustomizer(
                    padding: const EdgeInsets.all(15),
                    monthHeaderCustomizer: MonthHeaderCustomizer(
                      textStyle: const TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    monthButtonCustomizer: MonthButtonCustomizer(
                        currentDayColor: Colors.orange, borderStrokeWidth: 2),
                    monthWeekCustomizer: MonthWeekCustomizer(
                        weekList: [
                          "Pzt",
                          "Salı",
                          "Çrb",
                          "Prşb",
                          "Cuma",
                          "Cmt",
                          "Pazar"
                        ],
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 174, 0)))),
                yearDropDownCustomizer: YearDropDownCustomizer(
                    yearButtonCustomizer:
                        YearButtonCustomizer(borderColorOnSelected: Colors.red),
                    yearHeaderCustomizer: YearHeaderCustomizer(
                        titleTextStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 174, 0)))),
                onDateClicked: (OnDateSelected onDateClicked) {
                  int day = onDateClicked.selectedDate.day;
                  String message = "";
                  switch (day) {
                    case 8:
                      message = "Tüm Programlarda Ders Bitişi";
                      break;
                    case 11:
                      message =
                          "Önlisans ve Lisans Programlarında Yarıyıl Genel Sınavları Başlangıcı";
                      break;
                    case 22:
                      message =
                          "Önlisans ve Lisans Programlarında Yarıyıl Genel Sınavları Bitişi";
                      break;
                    case 25:
                      message =
                          "Yarıyıl Genel Sınav Sonuçlarının Elektronik Ortamda İletilmesi Bitişi";
                      break;
                    case 30:
                      message = "Bütünleme Sınavları Başlangıcı";
                      break;
                  }
                  if (message != "") {
                    snackBar(message);
                  }
                },
              ))
            ],
          ),
        ),
      ),
    );
  }

  DateTime getCurrentDay() {
    DateTime today = DateTime.now();
    return DateTime(today.year, today.month, today.day);
  }

  snackBar(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
