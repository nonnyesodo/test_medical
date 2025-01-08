// import 'dart:developer';
// import 'package:collection/collection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:intl/intl.dart';

 
 

// class AppCustomCalendar extends StatefulWidget {
//   const AppCustomCalendar(
//       {super.key, this.limitBack = false, required this.onchange});
//   final bool limitBack;
//   final Function(DateTime value) onchange;

//   @override
//   State<AppCustomCalendar> createState() => _AppCustomCalendarState();
// }

// class _AppCustomCalendarState extends State<AppCustomCalendar> {
//   int currentMonth = 0;
//   List<int> allYear = [];
//   int currentYear = DateTime.now().year;
//   List<DateTime> calendarDates = [];

//   DateTime? selectedvalue;
//   @override
//   void initState() {
//     super.initState();
//     allYear =
//         List.generate(DateTime.now().year - 1970 + 1, (index) => 1970 + index);
//     generateCalendar(date: DateTime.now());
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     Map<String, List<DateTime>> groupedDates = groupBy(calendarDates, (date) {
//       return DateFormat('EE').format(date);
//     });

//     return AlertDialog(
//       backgroundColor: Appcolors.white,
//       contentPadding: EdgeInsets.zero,
//       content: Container(
//         height: size.height * 0.4,
//         width: size.width,
//         padding: EdgeInsets.symmetric(
//             horizontal: size.width * 0.04, vertical: size.width * 0.06),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                       onTap: widget.limitBack && currentMonth == 0
//                           ? () => ToastMessage.showErrorToast(
//                               message: 'Cant Select below this month')
//                           : () {
//                               previousMonth();
//                             },
//                       child: Icon(Icons.arrow_back_ios, size: 20.sp)),
//                   GestureDetector(
//                     onTap: () {
//                       showDialog(
//                           context: context,
//                           builder: (_) {
//                             return CalendarYear(
//                               allYear: allYear,
//                               onchange: (v) {
//                                 log(v.toString());
//                                 currentYear = v;
//                                 log(currentYear.toString());
//                                 generateByYear();
//                               },
//                             );
//                           });
//                     },
//                     child: AppText(
//                         text:
//                             DateFormat('MMMM yyyy').format(calendarDates.last),
//                         fontweight: FontWeight.w600,
//                         size: 16),
//                   ),
//                   GestureDetector(
//                       onTap: () {
//                         nextMonth();
//                       },
//                       child: Icon(Icons.arrow_forward_ios, size: 20.sp)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25.h),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                     groupedDates.length,
//                     (index) => SizedBox(
//                           width: size.width * 0.075,
//                           child: AppText(
//                             text: groupedDates.keys.elementAt(index),size: 16
//                           ),
//                         ))),
//             SizedBox(height: 10.h),
//             Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   groupedDates.keys.length,
//                   (index) => Column(
//                     children: List.generate(
//                       groupedDates[groupedDates.keys.elementAt(index)]!.length,
//                       (ind) => Container(
//                         height: size.width * 0.1,
//                         width: size.width * 0.075,
//                         alignment: Alignment.center,
//                         padding:
//                             EdgeInsets.symmetric(vertical: size.width * 0.025),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: selectedvalue ==
//                                     groupedDates[groupedDates.keys
//                                         .elementAt(index)]![ind]
//                                 ? Appcolors.green
//                                 : Appcolors.white),
//                         child: GestureDetector(
//                           onTap: () =>
//                               widget.onchange(groupedDates[
//                                   groupedDates.keys.elementAt(index)]![ind]) ??
//                               setState(() {
//                                 selectedvalue = groupedDates[
//                                     groupedDates.keys.elementAt(index)]![ind];
//                               }),
//                           child: AppText(
//                               size: 14,
//                               text:
//                                   '${groupedDates[groupedDates.keys.elementAt(index)]![ind].day}',
//                               color: selectedvalue ==
//                                       groupedDates[groupedDates.keys
//                                           .elementAt(index)]![ind]
//                                   ? Appcolors.white
//                                   : Appcolors.blackColor),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }

//   nextMonth() {
//     setState(() {
//       currentMonth = currentMonth + 1;
//       DateTime now = DateTime.now();
//       DateTime nextMonth =
//           DateTime(currentYear, now.month + currentMonth, now.day);
//       generateCalendar(date: nextMonth);
//     });
//   }

//   generateByYear() {
//     setState(() {
//       DateTime now = DateTime.now();
//       DateTime newYear =
//           DateTime(currentYear, now.month + currentMonth, now.day);
//       generateCalendar(date: newYear);
//     });
//   }

//   previousMonth() {
//     setState(() {
//       currentMonth = currentMonth - 1;

//       DateTime now = DateTime.now();
//       DateTime nextMonth =
//           DateTime(currentYear, now.month + currentMonth, now.day);
//       generateCalendar(date: nextMonth);
//     });
//   }

//   generateCalendar({required DateTime date, bool normalCalendar = false}) {
//     calendarDates.clear();
//     if (date == DateTime.now() && !normalCalendar) {
//       DateTime today = date;
//       DateTime lastDay = DateTime(today.year, today.month + 1, 0);
//       for (DateTime i = today;
//           i.isBefore(lastDay);
//           i = i.add(const Duration(days: 1))) {
//         calendarDates.add(i);
//       }
//     } else {
//       DateTime newdate = date;
//       for (int day = 1;; day++) {
//         DateTime generatedDate = DateTime(newdate.year, newdate.month, day);
//         if (generatedDate.month != newdate.month) break;
//         calendarDates.add(generatedDate);
//       }
//     }
//   }
// }

// class CalendarYear extends StatelessWidget {
//   const CalendarYear(
//       {super.key, required this.onchange, required this.allYear});
//   final Function(int value) onchange;
//   final List<int> allYear;
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         backgroundColor: Appcolors.white,
//         content: SizedBox(
//           height: 200.h,
//           child: Column(mainAxisSize: MainAxisSize.min, children: [
//             const AppText(
//                 text: 'Select Year', size: 16, fontweight: FontWeight.w600),
//             SizedBox(height: 10.h),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                     children: List.generate(
//                         allYear.length,
//                         (index) => Padding(
//                               padding: EdgeInsets.only(bottom: 6.h),
//                               child: GestureDetector(
//                                   onTap: () {
//                                     onchange(allYear[index]);
//                                     Navigator.pop(context);
//                                   },
//                                   child: AppText(
//                                       text: allYear[index].toString())),
//                             ))),
//               ),
//             ),
//           ]),
//         ));
//   }
// }
