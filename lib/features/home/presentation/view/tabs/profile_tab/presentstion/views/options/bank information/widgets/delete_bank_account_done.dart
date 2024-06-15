import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteBankAccountDone extends StatelessWidget {
  const DeleteBankAccountDone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 1),
        () {
          Navigator.pop(context);
        },
      ),
      builder: (context, snapshot) => Scaffold(
        backgroundColor: const Color(0xff10284A),
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 265.h,
            width: 240.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 192.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Done',
                        style: TextStyle(
                          color: const Color(0xFF00BF54),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'this bank account has been',
                            style: TextStyle(
                              color: const Color(0xFF10284A),
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            'deleted successfully',
                            style: TextStyle(
                              color: const Color(0xFF10284A),
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundColor: const Color(0xff00BF54),
                    maxRadius: 40.r,
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
