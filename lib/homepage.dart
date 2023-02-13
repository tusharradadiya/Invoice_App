import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtnumber = TextEditingController();
  String? name, number;
  String note = "";
  int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0;
  int price1 = 280,
      price2 = 360,
      price3 = 30,
      price4 = 225,
      price5 = 155,
      price6 = 120,
      price7 = 520;
  String p1name = "MARGHERITA",
      p2name = "Peri Peri Veg",
      p3name = "Coca-cola",
      p4name = "CHEEZY-7-PIZZA",
      p5name = "GARDEN DELIGHT",
      p6name = "SPRING FLING",
      p7name = "CHEEZY MAC VEG";
  int total = 00,
      total1 = 00,
      total2 = 00,
      total3 = 00,
      total4 = 00,
      total5 = 00,
      total6 = 00,
      total7 = 00;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    i1 = 0;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    total = 00;
                    total1 = 00;
                    total2 = 00;
                    total3 = 00;
                    total4 = 00;
                    total5 = 00;
                    total6 = 00;
                    total7 = 00;
                  });
                },
                icon: Icon(Icons.refresh))
          ],
          backgroundColor: Colors.green,
          shadowColor: Colors.green,
          centerTitle: true,
          title: Text(
            "🍕 Pizza Hut 🍕",
            style: GoogleFonts.rubikWetPaint(letterSpacing: 2),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h(20),
              Column(
                children: [
                  Text(
                    "Customer detail",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  h(5),
                  TextField(
                    controller: txtname,
                    style: TextStyle(fontSize: 17),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.edit, color: Colors.black),
                      label: Text(
                        "name",
                        style: TextStyle(color: Colors.black),
                      ),
                      prefix: Text("Name:"),
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                  h(30),
                  TextField(
                    controller: txtnumber,
                    style: TextStyle(fontSize: 17),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.edit, color: Colors.black),
                      label: Text(
                        "Contact",
                        style: TextStyle(color: Colors.black),
                      ),
                      prefix: Text("Contact:"),
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                  h(20),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Item detail",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      h(10),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p1name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (i1 != 0) {
                                    i1--;
                                    total1 = price1 * i1;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            Text(
                              "$i1",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i1++;
                                    total1 = price1 * i1;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total1",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p2name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price2",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (i2 != 0) {
                                      i2--;
                                      total2 = price2 * i2;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove)),
                            Text(
                              "$i2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i2++;
                                    total2 = price2 * i2;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p3name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price3",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (i3 != 0) {
                                      i3--;
                                      total3 = price3 * i3;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove)),
                            Text(
                              "$i3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i3++;
                                    total3 = price3 * i3;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total3",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p4name",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price4",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (i4 != 0) {
                                      i4--;
                                      total4 = price4 * i4;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove)),
                            Text(
                              "$i4",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i4++;
                                    total4 = price4 * i4;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total4",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p5name",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price5",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (i5 != 0) {
                                      i5--;
                                      total5 = price5 * i5;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.remove)),
                            Text(
                              "$i5",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i5++;
                                    total5 = price5 * i5;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total5",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p6name",
                                    style: const TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price6",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (i6 != 0) {
                                      i6--;
                                      total6 = price6 * i6;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.remove)),
                            Text(
                              "$i6",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i6++;
                                    total6 = price6 * i6;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total6",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      h(20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 15)
                          ],
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " $p7name",
                                    style: const TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    " Rs. $price7",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (i7 != 0) {
                                    i7--;
                                    total7 = price7 * i7;
                                  }
                                });
                              },
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              "$i7",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    i7++;
                                    total7 = price7 * i7;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                            w(20),
                            Text(
                              "Rs. $total7",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "\ntotal = ${total = total1 + total2 + total3 + total4 + total5 + total6 + total7} ",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            name = txtname.text;
                            number = txtnumber.text;
                            if (name == "" || number == "") {
                              note = "Please fill the above details";
                            } else {
                              Navigator.pushNamed(context, 'item', arguments: [
                                name,
                                number,
                                i1 != 0 ? p1name : "",
                                i1 != 0 ? i1 : "",
                                i1 != 0 ? price1 : "",
                                i1 != 0 ? total1 : "",
                                i2 != 0 ? p2name : "",
                                i2 != 0 ? i2 : "",
                                i2 != 0 ? price2 : "",
                                i2 != 0 ? total2 : "",
                                i3 != 0 ? p3name : "",
                                i3 != 0 ? i3 : "",
                                i3 != 0 ? price3 : "",
                                i3 != 0 ? total3 : "",
                                i4 != 0 ? p4name : "",
                                i4 != 0 ? i4 : "",
                                i4 != 0 ? price4 : "",
                                i4 != 0 ? total4 : "",
                                i5 != 0 ? p5name : "",
                                i5 != 0 ? i5 : "",
                                i5 != 0 ? price5 : "",
                                i5 != 0 ? total5 : "",
                                i6 != 0 ? p6name : "",
                                i6 != 0 ? i6 : "",
                                i6 != 0 ? price6 : "",
                                i6 != 0 ? total6 : "",
                                i7 != 0 ? p7name : "",
                                i7 != 0 ? i7 : "",
                                i7 != 0 ? price7 : "",
                                i7 != 0 ? total7 : "",
                                total
                              ]);
                              note = "";
                            }
                          });
                        },
                        child: const Text("Next"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            note,
                            style: const TextStyle(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
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
}
