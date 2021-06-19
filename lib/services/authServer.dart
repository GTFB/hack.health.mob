import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'User.dart';

class AuthServer{
  late final bool connectUser;
  late Uri uri = Uri.parse('https://hack.medin.cloud/login');

  makePostRequest(String email, String password) async {
    // set up POST request arguments
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{email: "'+email+'", password: "'+password+'"}';
    // make POST request
    Response response = await post(uri, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body = response.body;
    return body;
  }
  Future<User> fetchAlbum() async {
    final response =
    await http.get(Uri.parse('https://hack.medin.cloud/login'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future logOut() async {
    if(connectUser==true){
    }
  }
  Stream<User>? get currentUser {
    return null;
 }
}
