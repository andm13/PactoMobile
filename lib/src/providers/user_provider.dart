import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart' as crypto;
import 'package:pacto_movil/src/models/user_model.dart';

class UserProvider {
  final String _url = 'https://restserver-pacto.herokuapp.com';

  Future<Map<String, dynamic>> loginUser(String correo, String password) async {
    final url = '${this._url}/login';
    final resp = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: json.encode({"email": correo, "password": password}));

    final Map<String, dynamic> decodedData = json.decode(resp.body);

    final user = UserModel.fromJson(decodedData['usuario']);

    if ((user.email == correo)) {
      return {'ok': true};
    } else {
      return {'ok': false, 'mensaje': 'Datos Incorrectos'};
    }
  }
}
