
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

/*class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        child: Form(
          child: Column(
            children: <Widget> [
              Image.asset('assets/images/covid2.png'),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), hintText: 'email'
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), hintText: 'Password'
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), hintText: 'Confirm Password'
                ),
              ),
              RaisedButton(
                child: Text(
                  'sign up',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                onPressed: () async {
                  try {
                    FirebaseUser user = (await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text,)).user;
                    if(user != null){
                      UserUpdateInfo updateUser = UserUpdateInfo();
                      updateUser.displayName = _usernameController.text;
                      user.updateProfile(updateUser);
                //      Navigator.of(context).pushNamed();
                    }
                  } catch (e) {
                    print(e);
                    _usernameController.text = "";
                    _passwordController.text = "";
                    _repasswordController.text = "";
                    _emailController.text = "";
                    // TODO: alertdialog with error
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
