import 'package:flutter/material.dart';

import '../../../styles.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SafeArea(child: SingleChildScrollView(padding: defaultScreenPadding, child: RegisterForm())));
  }
}
