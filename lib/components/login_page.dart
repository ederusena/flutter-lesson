import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(bottom: 20.0),
                        child: Image.asset('assets/images/google-logo.png'),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(children: [
                            TextField(
                              onChanged: (value) => email = value,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.black)),
                            ),
                            Container(height: 10),
                            TextField(
                              onChanged: (value) => password = value,
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.black)),
                            ),
                            Container(height: 10),
                            ElevatedButton(
                                onPressed: () {
                                  if (email != '' && password != '') {
                                    Navigator.of(context)
                                        .pushReplacementNamed('/home');
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ]),
                        ),
                      ),
                    ]),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/images/trianglify-lowres.png',
            fit: BoxFit.cover),
      ),
      Container(
        color: Colors.black.withOpacity(0.3),
      ),
      _body(),
    ]));
  }
}
