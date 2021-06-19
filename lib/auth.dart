import 'package:altrp/pages/PageExpert.dart';
import 'package:altrp/services/authServer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'HomePage.dart';
import 'services/User.dart';
import 'auth.dart';
import 'landingPage.dart';

class AuthorizationPage extends StatefulWidget {
  AuthorizationPage({key}) : super();

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
  }

class _AuthorizationPageState  extends State<AuthorizationPage>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  var _email;
  var _password;
  bool showLogin = true;
  late User user;

  AuthServer _authServer = AuthServer();
  LandingPage _landingPage = LandingPage();

  @override
  Widget build(BuildContext context) {

    Widget _lodo(){
      return Padding(
          padding: EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child: Text("Вход в систему", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)
            ),
          ),
        )
      );
    }

    Widget _input(Icon icon, String hint, TextEditingController controller, bool obsecure){
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obsecure,
          style: TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey, width: 3)
            ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 1)
              ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
                data: IconThemeData(color: Colors.grey),
                child: icon
              ),
            )
          ),
        ),
      );
    }

    Widget _button(String text, void func()) {
      return RaisedButton(
          splashColor: Theme.of(context).primaryColor,
          highlightColor: Theme.of(context).primaryColor,
          color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, fontSize: 20)
        ),
        onPressed: (){
            func();
        },
      );
    }

    Widget _form(String label, void func()) {
      return Container(
        child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                child: _input(Icon(Icons.email), "E-mail", _emailController, false)
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: _input(Icon(Icons.lock), "Пароль", _passwordController, true)
              ),
              SizedBox(height: 1,),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: _button(label, func)
                  ),
              )
            ],
        ),
      );
    }

    void _loginButtonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if(_email.isEmpty || _password.isEmpty) PageExpert();
      try {

      } catch (e) {
        PageExpert();
      }
      if(user.token!=null)
      {

      } else {
        _emailController.clear();
        _passwordController.clear();
      }
    }



    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Column(
        children: <Widget>[
          _lodo(),
          (showLogin
              ? Column(
            children: [
              _form("Войти", _loginButtonAction),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                    child: Text("Не зарегистрированы?", style: TextStyle(fontSize: 20, color: Colors.white)),
                    onTap:(){
                      setState((){
                        showLogin = false;
                      });
                    }
                ),
              )
            ],
          )
              : Column(
            children: [
              _form("Зарегистрироваться", _loginButtonAction),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                    child: Text("Уже зарегистрированы? Авторизуйтесь!", style: TextStyle(fontSize: 20, color: Colors.black)),
                    onTap:(){
                      setState((){
                        showLogin = true;
                      });
                    }
                ),
              )
            ],
          )
          ),
        ],
      ),
    );
  }
}
