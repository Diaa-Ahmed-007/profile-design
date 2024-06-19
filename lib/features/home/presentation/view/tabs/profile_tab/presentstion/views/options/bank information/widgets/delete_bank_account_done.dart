import 'package:flutter/material.dart';

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
            height: 265,
            width: 240,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 192,
                  width: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Done',
                        style: TextStyle(
                          color: Color(0xFF00BF54),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'this bank account has been',
                            style: TextStyle(
                              color: Color(0xFF10284A),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            'deleted successfully',
                            style: TextStyle(
                              color: Color(0xFF10284A),
                              fontSize: 12,
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
                const Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff00BF54),
                    maxRadius: 40,
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 40,
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
