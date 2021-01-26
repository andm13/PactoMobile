import 'package:flutter/material.dart';
import 'package:pacto_movil/src/widgets/drawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      drawer: AppDrawer(),
    );
  }
}
