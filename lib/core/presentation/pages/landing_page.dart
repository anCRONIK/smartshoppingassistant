import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../routing.dart';
import '../../../styles.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        OutlinedButton.icon(
          icon: const Icon(FontAwesomeIcons.arrowUp),
          label: Text('page.landing.button.register.text'.tr.toUpperCase()),
          onPressed: () => Get.toNamed(AppRoutes.REGISTER),
        )
      ],
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: defaultScreenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('page.landing.header_text'.tr, style: Style.title),
              Container(height: 24.0),
              Text('page.landing.welcome_text'.tr, style: Style.body1),
              Container(height: 32.0),
              Card(
                elevation: 4,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.mail),
                          label: Text('page.landing.button.mail_login.text'.tr.toUpperCase()),
                          onPressed: () => Get.toNamed(AppRoutes.LOGIN),
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(FontAwesomeIcons.google),
                          label: Text('page.landing.button.google_login.text'.tr.toUpperCase()),
                          onPressed: () {},
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
