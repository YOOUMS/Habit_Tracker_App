import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyHabitScreen extends StatelessWidget {
  const EmptyHabitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 600.w,
          height: 600.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/HomePage.png'))),
        ),
        Text(
          "Noting to do today",
          style: TextStyle(
              fontSize: 100.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 20, 176, 191)),
        ),
        Text(
          "Add Something?",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 100.sp,
              color: const Color.fromARGB(255, 20, 176, 191)),
        )
      ]),
    );
  }
}
