// ignore_for_file: prefer_const_constructors

import 'package:book_tracker/widgets/create_account_form.dart';
import 'package:book_tracker/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container( 
        child: Column( 
          children: [
            Expanded(
              flex: 2,
              child: Container( 
                color: HexColor('#b9c2d1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text('Sign In', style: Theme.of(context).textTheme.headlineLarge, ),
            ),
            SizedBox( 
              height: 10,
            ),
            Column( 
              children: [
                SizedBox( 
                  width: 300,
                  height: 300,
                  child: isCreateAccountClicked != true ? 
                  LoginForm(
                    formKey: _formKey, 
                    emailTextController: _emailTextController, 
                    passwordTextController: _passwordTextController
                  )
                  :
                  CreateAccountForm(
                    formKey: _formKey, 
                    emailTextController: _emailTextController, 
                    passwordTextController: _passwordTextController
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextButton.icon(
                    onPressed: () {
                      setState(() {
                        if(!isCreateAccountClicked) {
                          isCreateAccountClicked = true;
                        } else {
                          isCreateAccountClicked = false;
                        }
                      });
                    }, 
                    icon: Icon(Icons.portrait_rounded), 
                    label: Text(isCreateAccountClicked ? 'Already have an account?' : 'Create Account'),
                    style: TextButton.styleFrom(
                      foregroundColor: HexColor('#fd5b28'),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded( 
              flex: 2,
              child: Container( 
                color: HexColor('#b9c2d1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
