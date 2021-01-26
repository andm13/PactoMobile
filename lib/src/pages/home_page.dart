import 'package:flutter/material.dart';
import 'package:pacto_movil/src/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido'),
        ),
        drawer: AppDrawer(),
        body: Stack(
          children: [
            Center(
              child: Container(
                child: Text(
                  "Bienvenido, Andres",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
