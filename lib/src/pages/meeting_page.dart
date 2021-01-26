import 'package:flutter/material.dart';
import 'package:pacto_movil/src/widgets/drawer.dart';

class MeetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reuniones'),
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          ListView(
            children: [_meetingBox(context), _meetingBox(context)],
          )
        ],
      ),
    );
  }

  Widget _meetingBox(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4,
            offset: Offset(2.0, 5.0),
          ),
        ],
        color: Colors.white,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Tema Reunion",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 22.0,
                color: Colors.black,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    "Lugar: ",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text("Oficina asociación",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Fecha ",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18.0,
                            color: Colors.black,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "22/01/2021",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18.0,
                            color: Colors.black,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    )),
                Container(
                    child: Column(
                  children: [
                    Text(
                      "Hora",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "08:00",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
