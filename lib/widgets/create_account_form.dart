// ignore_for_file: prefer_const_constructors

import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  }) : _formKey = formKey, _emailTextController = emailTextController, _passwordTextController = passwordTextController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column( 
        children: [
          Text('Please enter a valid email and a password that is atleast 6 characters.'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField( 
              validator: (value) {
                return value!.isEmpty ? 'Please enter an email' : null;
              },
              controller: _emailTextController,
              decoration: buildInputDecoration('Enter email', 'julian@me.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField( 
              validator:(value) {
                return value!.isEmpty ? 'Please enter a password' : null;
              },
              controller: _passwordTextController,
              obscureText: true,
              decoration: buildInputDecoration('Enter password', '********'),
            ),
          ),
          SizedBox( 
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              backgroundColor: HexColor('#69639F'),
              textStyle: TextStyle( 
                fontSize: 18,
              )
            ),
            onPressed: () {
              if(_formKey.currentState!.validate()) {
                
              }
            }, 
            child: Text('Create Account')
          ),
        ],
      ),
    );
  }
}
