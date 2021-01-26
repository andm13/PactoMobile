import 'package:flutter/material.dart';
import 'package:pacto_movil/src/blocs/provider.dart';
import 'package:pacto_movil/src/blocs/user_bloc.dart';
import 'package:pacto_movil/src/models/user_model.dart';
import 'package:pacto_movil/src/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = Provider.userGlobal(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido'),
        ),
        drawer: AppDrawer(),
        body: Stack(
          children: [
            Center(
              child: Container(
                  child: StreamBuilder(
                      stream: userBloc.userStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<UserModel> snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data.nombre,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      })),
            ),
          ],
        ));
  }
}
