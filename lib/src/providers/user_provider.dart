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

    print(decodedData['usuario']);

    var content = new Utf8Encoder().convert(password);
    var md5 = crypto.md5;
    var digest = md5.convert(content);

    print(
        '######################################## DIGEST ############################');
    print(digest);
    print(
        '######################################## PASSWORD ############################');
    print(user.password);
    print(
        '######################################## USER ############################');
    print(user);

    if ((user.email == correo) && (user.password == digest.toString())) {
      return {'ok': true};
    } else {
      return {'ok': false, 'mensaje': 'Datos Incorrectos'};
    }
  }
}
