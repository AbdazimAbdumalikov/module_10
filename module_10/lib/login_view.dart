import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool successMessage = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _submit () {
    setState(() {
      successMessage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            if (successMessage) Text('Успешно зарегистрировались'),
            TextFormField(
              key: Key('fieldEmail'),
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              key: Key('fieldPhone'),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone'
              ),
            ),
            ElevatedButton(onPressed: _submit,
                child: Text('Submit')
            ),
          ],
        ),
      ),
    );
  }
}
