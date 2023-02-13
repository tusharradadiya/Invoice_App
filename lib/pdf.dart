import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'dart:io';
import 'package:path_provider/path_provider.dart';

void pdfCreate(List list) async {

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: const pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.all(40),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw. Center(
                child: pw.Column(
                  children: [
                    pw.Text(
                      "Pizza hut",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                    h(20),
                    pw.Text(
                      "Sector 14,Navi Mumbai",
                      style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                    ),
                    h(5),
                    pw.Text(
                      "Contact- 9988776655",
                      style: GoogleFonts.chivo(fontSize: 22),
                    ),
                    h(5),
                    pw.Text(
                      "GST No - 0G2010A8KIDF7",
                      style: GoogleFonts.chivo(fontSize: 22),
                    ),
                  ],
                ),
              ),
              h(18),
              pw.Container(
                height: 2,
                width: double.infinity,
                color: PdfColors.black,
              ),
              h(10),
              pw.Text(
                "Name: ${list[0]}",
                style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
              ),
              pw.Text(
                "Mobile: ${list[1]}",
                style: GoogleFonts.chivo(fontSize: 22),
              ),
              h(10),
              pw.Container(
                height: 2,
                width: double.infinity,
                color: PdfColors.black,
              ),
              h(10),
              pw.Text(
                "Date: $datetime",
                style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
              ),
              pw.Text(
                "Bill No: ",
                style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
              ),
              h(10),
              pw.Container(
                height: 2,
                width: double.infinity,
                color: PdfColors.black,
              ),
              h(10),
              pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "Item",
                      style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "Qty.",
                      style: pw.GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "Price",
                      style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "Amount",
                      style: GoogleFonts.chivo(letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              ),
              h(10),
              pw.Container(
                height: 2,
                width: double.infinity,
                color: PdfColors.black,
              ),
              h(10),
              list[2] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[2]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[3]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[4]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[5]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[6] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[6]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[7]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[8]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[9]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[10] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[10]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[11]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[12]}",
                      style: pw.GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[13]}",
                      style: pw.GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[14] != ""
                  ?pw. Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[14]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 21),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[15]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[16]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[17]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[18] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[18]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 21),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[19]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[20]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[21]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[22] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[22]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 21),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[23]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[24]}",
                      style: pw.GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[25]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              list[26] != ""
                  ? pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      "${list[26]}",
                      style: pw.GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 21),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Text(
                      "${list[27]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[28]}",
                      style: GoogleFonts.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${list[29]}",
                      style: pw.chivo(
                          letterSpacing: 1, fontSize: 22),
                    ),
                  ),
                ],
              )
                  : pw.Container(
                height: 0,
              ),
              h(10),
              pw.Container(
                height: 2,
                width: double.infinity,
                color: PdfColors.black,
              ),
            ],
          ),
        );
      },
    ),
  );
  Directory? dir = await getExternalStorageDirectory();
  print("=============== ${dir!.path}");
  final file = File("${dir.path}/resume1.pdf");
  await file.writeAsBytes(await pdf.save());
}

pw.Widget w(double width) {
  return pw.SizedBox(
    width: width,
  );
}

pw.Widget h(double height) {
  return pw.SizedBox(
    height: height,
  );
}
