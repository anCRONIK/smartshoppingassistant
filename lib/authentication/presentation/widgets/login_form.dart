import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';

class LogInForm extends StatefulWidget {
  @override
  LogInFormState createState() => LogInFormState();
}

/// Form with user sign operations.
class LogInFormState extends State {
  /// Global form key
  // final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  /// Form id for password text field
  static const _passwordFormId = "password";

  /// Form id for  email text field
  static const _emailFormId = "email";

  /// Logger
  final Logger _logger = Logger("LogInForm");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "form.login.field.email.text".tr, icon: const Icon(Icons.email)),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (null == value) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "form.login.field.password.labelText".tr, icon: const Icon(Icons.keyboard_hide)),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          MaterialButton(
              onPressed: () {
                final form = _formKey.currentState;
              },
              child: Text("form.login.button.mail_login.text".tr))
        ],
      ),
    );
  }
}
