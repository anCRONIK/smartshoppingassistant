import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

/// Form with user sign operations.
class RegisterFormState extends State {
  /// Logger
  final Logger _logger = Logger("RegisterForm");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "form.register.field.username.text".tr, icon: const Icon(FontAwesomeIcons.addressBook)),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (null == value || value.isEmpty) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "form.register.field.email.text".tr, icon: const Icon(Icons.email)),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (null == value || value.isEmpty) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "form.register.field.password.labelText".tr, icon: const Icon(Icons.keyboard_hide)),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          TextFormField(
            decoration:
                InputDecoration(labelText: "form.register.field.password_confirm.labelText".tr, icon: const Icon(Icons.keyboard_hide)),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "form.validators.required.errorText".tr;
              }
              return null;
            },
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "form.register.field.first_name.text".tr, icon: const Icon(Icons.text_snippet)),
            keyboardType: TextInputType.text,
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "form.register.field.last_name.text".tr, icon: const Icon(Icons.text_snippet)),
            keyboardType: TextInputType.text,
            onSaved: (value) {},
          ),
          Container(height: 32),
          ElevatedButton(onPressed: () {}, child: Text("form.register.button.register.text".tr.toUpperCase()))
        ],
      ),
    );
  }
}
