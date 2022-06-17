import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Covid-19 Tracker'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                print('Register');
              },
              icon: Icon(Icons.person),
              label: Text('Register'))
        ],
      ),
      body: SingleChildScrollView(

        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/covid.png'),
              TextFormField(
                controller: _emailController,
                validator: (input) {
                  if(input.isEmpty){
                    return 'Please type an email';
                  }
                },
                onChanged: (val) {
                  print(val);
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email), hintText: 'email'),
              ),
              TextFormField(
                controller: _passController,
                validator: (input) {
                  if(input.length<6){
                    return 'Please provide an password';
                  }
                },
                obscureText: true,  // masquer text
                onChanged: (val) {
                  print(val);
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), hintText: 'password'),
              ),
              ElevatedButton(
                onPressed: signIn,
                  child: Text(
                    'sign in',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
              )
            ],
          ),
        ),
      ),
    );

  }



  Future<void> signIn() async{
    print(_emailController.text);
    print(_passController.text);

    if(formKey.currentState.validate()){
      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailController.text, password: _passController.text);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Center(child: Text("Bonjour ${_emailController.text}")),)));
      } catch(e){
        print(e.message);
      }
    }
  }
}

