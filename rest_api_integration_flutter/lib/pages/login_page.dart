import 'package:flutter/material.dart';
import 'package:rest_api_integration_flutter/utils/constants.dart';
import 'package:rest_api_integration_flutter/components/progress_dialog.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final globalKey = new GlobalKey<ScaffoldState>();

  ProgressDialog progressDialog = ProgressDialog.getProgressDialog(ProgressDialogTitles.USER_LOG_IN);
  TextEditingController emailController = new TextEditingController(text: '');
  TextEditingController passwordController = new TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: globalKey,
      backgroundColor: Colors.white,
      body: new Stack(
        children: <Widget>[
          _loginContainer(),
          progressDialog,
        ],
      ),
    );
  }

  Widget _loginContainer() {
    return new Container(
      child: new ListView(
        children: <Widget>[
          new Center(
            child: new Column(
              children: <Widget>[
                _appIcon(),
                _formContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _appIcon() {
    return new Container(
      margin: EdgeInsets.only(top: 20.0),
      decoration: new BoxDecoration(color: Colors.blue[400]),
      child: new Image(image: new AssetImage('assets/images/ic_launcher.png'), width: 170.0, height: 170.0),
    );
  }

  Widget _formContainer() {
    return new Container(
      margin: EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
      child: new Form(
        child: new Theme(
          data: new ThemeData(
            primarySwatch: Colors.pink
          ),
          child: new Column(
            children: <Widget>[
              _emailContainer(),
              _passwordContainer(),
              _loginButtonContainer(),
              _registerNowLabel(),
            ],
          )
        ),
      ),
    );
  }
  
  Widget _emailContainer() {
    return new Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: new TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          suffixIcon: new Icon(Icons.email, color: Colors.pink),
          labelText: Texts.EMAIL,
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _passwordContainer() {
    return new Container(
      margin: EdgeInsets.only(bottom: 35.0),
      child: new TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          suffixIcon: new Icon(Icons.vpn_key, color: Colors.pink),
          labelText: Texts.PASSWORD,
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
      ),
    );
  }

  Widget _loginButtonContainer() {
    return new Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: double.infinity,
      decoration: new BoxDecoration(color: Colors.blue),
      child: new MaterialButton(
        textColor: Colors.white,
        padding: EdgeInsets.all(15.0),
        onPressed: _loginButtonAction,
        child: new Text(Texts.LOGIN, style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _registerNowLabel() {
    return new GestureDetector(
      onTap: _goToRegisterScreen,
      child: new Container(
        margin: EdgeInsets.only(bottom: 30),
        child: new Text(Texts.REGISTER_NOW, style: TextStyle(fontSize: 18.0, color: Colors.pink)),
      ),
    );
  }
  
  void _loginButtonAction() {
    if (emailController.text == '') {
      globalKey.currentState.showSnackBar(new SnackBar(content: new Text(SnackBarText.ENTER_EMAIL)));
      return;
    }

    if (passwordController.text == '') {
      globalKey.currentState.showSnackBar(new SnackBar(content: new Text(SnackBarText.ENTER_PASS)));
      return;
    }

    FocusScope.of(context).requestFocus(new FocusNode());
    progressDialog.showProgress();

  }

  void _goToRegisterScreen() {
    
  }
}
