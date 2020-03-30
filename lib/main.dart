import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tableRowSpace = TableRow(children: [
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 20,
      ),
    ]);
    return Scaffold(
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(30),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            buildTableRow(title: 'Full Name:', value: 'Nna Prince Chioma'),
            tableRowSpace,
            buildTableRow(title: 'Slack Username:', value: 'Prn-Ice'),
            tableRowSpace,
            buildTableRow(
                title: 'Email Address:', value: 'stormprince77@gmail.com'),
            tableRowSpace,
            buildTableRow(title: 'Tracks:', value: ''),
            tableRowSpace,
            TableRow(
              children: [
                Text(''),
                Column(
                  children: <Widget>[
                    buildTrack('Coding'),
                    buildTrack('Mobile'),
                    buildTrack('Front End'),
                    buildTrack('Back End'),
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }

  Row buildTrack(String name) {
    return Row(
      children: <Widget>[
        Text(
          String.fromCharCode(0x2022),
          style: GoogleFonts.pacifico(fontSize: 18, color: Colors.blue),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
        ),
      ],
    );
  }

  TableRow buildTableRow({String title, String value}) {
    return TableRow(
      children: [
        Text(
          title,
          style: GoogleFonts.pacifico(fontSize: 18, color: Colors.blue),
        ),
        Text(
          value,
          style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
        ),
      ],
    );
  }
}
