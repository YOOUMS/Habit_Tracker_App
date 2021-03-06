import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker/DB/DBConaction.dart';
import 'package:habit_tracker/Screens/EmptyHabitScreen.dart';
// import 'package:habit_tracker/Widgets.dart/LoadingSpinner.dart';
import 'package:habit_tracker/Widgets.dart/TodayHabit.dart';
import 'package:habit_tracker/model/habit.dart';
import 'package:table_calendar/table_calendar.dart';

class TodayScreen extends StatefulWidget {
  Function function;
  Function function2;
  List<Habit> habits;
  DateTime dateTime;
  // static final now = DateTime.now();
  // final table = TableCalendar(
  //   calendarStyle: const CalendarStyle(rangeHighlightColor: Colors.red),
  //   rowHeight: 80.h,
  //   firstDay: DateTime.utc(2010, 10, 16),
  //   lastDay: DateTime.utc(2030, 3, 14),
  //   focusedDay: DateTime.now(),
  //   onDaySelected: (DateTime dateTime, DateTime dateTime2) {},
  // );
  double todayHieght;
  TodayScreen(this.todayHieght, this.function, this.habits, this.function2,
      this.dateTime);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.habits.isEmpty
            ? const EmptyHabitScreen()
            : ListView.builder(
                itemCount: widget.habits.length,
                itemBuilder: (context, index) {
                  return TodayHabit(
                    habit: widget.habits[index],
                    function: widget.function,
                  );
                }),
        AnimatedContainer(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
            ),
            height: widget.todayHieght,
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
                child: TableCalendar(
                    selectedDayPredicate: (day) =>
                        isSameDay(day, widget.dateTime),
                    calendarStyle:
                        const CalendarStyle(rangeHighlightColor: Colors.red),
                    rowHeight: 100.h,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: widget.dateTime,
                    onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                      widget.dateTime = selectedDay;
                      widget.function2(selectedDay);
                    })))
      ],
    );
  }
}
