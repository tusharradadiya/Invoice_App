import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productpage extends StatefulWidget {
  const productpage({Key? key}) : super(key: key);

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  String datetime = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "🍕 Pizza Hut 🍕",
            style: GoogleFonts.rubikWetPaint(letterSpacing: 2),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Pizza hut",
                        style: GoogleFonts.chivo(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      h(20),
                      Text(
                        "Sector 14,Navi Mumbai",
                        style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                      ),
                      h(5),
                      Text(
                        "Contact- 9988776655",
                        style: GoogleFonts.chivo(fontSize: 22),
                      ),
                      h(5),
                      Text(
                        "GST No - 0G2010A8KIDF7",
                        style: GoogleFonts.chivo(fontSize: 22),
                      ),
                    ],
                  ),
                ),
                h(18),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                h(10),
                Text(
                  "Name: ${list[0]}",
                  style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                ),
                Text(
                  "Mobile: ${list[1]}",
                  style: GoogleFonts.chivo(fontSize: 22),
                ),
                h(10),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                h(10),
                Text(
                  "Date: $datetime",
                  style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                ),
                Text(
                  "Bill No: 56",
                  style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                ),
                h(10),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                h(10),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Item",
                        style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Qty.",
                        style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Price",
                        style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Amount",
                        style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                h(10),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                h(10),
                list[2] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[2]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[3]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[4]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[5]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[6] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[6]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[7]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[8]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[9]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[10] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[10]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[11]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[12]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[13]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[14] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[14]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 21),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[15]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[16]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[17]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[18] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[18]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 21),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[19]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[20]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[21]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[22] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[22]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 21),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[23]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[24]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[25]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                list[26] != ""
                    ? Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${list[26]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 21),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${list[27]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[28]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${list[29]}",
                              style: GoogleFonts.chivo(
                                  letterSpacing: 1, fontSize: 22),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
                h(10),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                h(10),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total = ${list[30]}    ",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget h(double height) {
  return SizedBox(
    height: height,
  );
}

Widget w(double width) {
  return SizedBox(
    width: width,
  );
}
