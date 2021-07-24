import 'package:flutter/material.dart';

import '../../../../../styles.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: SafeArea(child: Padding(padding: defaultScreenPadding, child: LogInForm())));
  }
}
