import 'package:auth_with_laravel/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _emailController.text='admin@gmail.com';
    _passwordController.text='admin123';
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: _emailController,
                  validator: (value) => value?.isEmpty != null
                      ? 'please enter valid email'
                      : null),
              TextFormField(
                  controller: _passwordController,
                  validator: (value) =>
                      value?.isEmpty != null ? 'please enter password' : null),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                //  color:Colors.blue,
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Map <String, dynamic>  creds ={
                    'email' : _emailController.text,
                    'password' : _passwordController.text,
                    'device_name' :'mobile',
                  };
                  if (_formKey.currentState != null) {
                    // print(creds);
                    Provider.of<Auth>(context, listen: false).login(creds); //ubah eps 4
                    // Provider.of<Auth>(context, listen: false).login(creds); //ubah eps 4
                    Navigator.pop(context);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
