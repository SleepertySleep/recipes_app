import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
  
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: SafeArea(
          child: _build()
      ),
    );
  }

  Widget _build(){
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _title(),
            _login(),
          ],
        ),
    );
  }

  Widget _title() {
    return Text(
        'Recipes',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w300,
        )
    );
  }

  Widget _login() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Username"
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            _button(),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Login',
          )
      ),
    );
  }
}