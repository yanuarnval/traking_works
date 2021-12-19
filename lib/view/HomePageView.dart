import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late double widthHp;

  @override
  Widget build(BuildContext context) {
    widthHp = (MediaQuery.of(context).size.width / 2) - 20;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff286782),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 10),
                        child: Text(
                          'Kranee',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fri,06 june 2020',
                            style: GoogleFonts.spartan(
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            'Fri,06 june 2020',
                            style: GoogleFonts.spartan(
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset('assets/img_profil.jpg'),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hello, ',
                                      style: GoogleFonts.spartan(),
                                    ),
                                    Text(
                                      'Ivan Setiawan',
                                      style: GoogleFonts.spartan(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Text(
                                  'ivansetiawan@gmail.com',
                                  style: GoogleFonts.spartan(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff59B2F2),
                              elevation: 0,
                              minimumSize: Size(widthHp, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Clock in',
                              style: GoogleFonts.spartan(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff70A8BF),
                              elevation: 0,
                              minimumSize: Size(widthHp, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Clock out',
                              style: GoogleFonts.spartan(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Attendance Overview (Jun 2020)',
                          style: GoogleFonts.spartan(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.spartan(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xff59B2F2)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xff00C292), width: 2),
                              ),
                              child: Center(
                                child: Text('18',
                                    style: GoogleFonts.spartan(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff00C292))),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Present',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffFBBC04), width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  '0',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFBBC04)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Overtime',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffFFAD61), width: 2),
                              ),
                              child: Center(
                                child: Text('3',
                                    style: GoogleFonts.spartan(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFAD61))),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Late',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffF15B5D), width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  '0',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffF15B5D)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Absen',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffC159F2), width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  '7',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffC159F2)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Holiday',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Task Overview (Jun 2020)',
                          style: GoogleFonts.spartan(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.spartan(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xff59B2F2)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff70A8BF),
                              ),
                              child: Center(
                                child: Text('18',
                                    style: GoogleFonts.spartan(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Complete',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff00C292)),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Doing',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFFAD61)),
                              child: Center(
                                child: Text('2',
                                    style: GoogleFonts.spartan(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Pending',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              height:
                                  (MediaQuery.of(context).size.width / 5) - 27,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF15B5D)),
                              child: Center(
                                child: Text(
                                  '0',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Overdue',
                              style: GoogleFonts.spartan(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notice Board',
                          style: GoogleFonts.spartan(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.spartan(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xff59B2F2)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (index, context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xffB9B9B9),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Work From Office (WFO)',
                                  style: GoogleFonts.spartan(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff3C3C3C)),
                                ),
                                Text(
                                  '26 June 2020',
                                  style: GoogleFonts.spartan(
                                      fontSize: 12, color: Color(0xff7D7D7D)),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
