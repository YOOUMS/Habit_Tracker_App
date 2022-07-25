import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CongratsScreen extends StatelessWidget {
  String habitName;
  CongratsScreen({required this.habitName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(35.r))),
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.all(10),
      child: Container(
          padding: EdgeInsets.all(50.w),
          width: double.infinity,
          height: 1250.h,
          child: Column(
            children: [
              Text(
                'Congratulation!',
                style: TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                habitName,
                style: TextStyle(
                    color: Color.fromARGB(255, 239, 194, 44),
                    fontWeight: FontWeight.bold,
                    fontSize: 100.sp),
              ),
              Container(
                width: 700.w,
                height: 700.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/CompTask.png'))),
              ),
              Text(
                'Is Completed',
                style: TextStyle(
                    color: Color.fromARGB(255, 126, 189, 213),
                    fontWeight: FontWeight.bold,
                    fontSize: 100.sp),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 228, 75, 77), // Background color
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: SizedBox(
                      width: 650.w,
                      height: 120.h,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'done and Delete',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.sp),
                          ))))
            ],
          )),
    );
  }
}