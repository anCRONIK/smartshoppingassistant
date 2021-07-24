import 'package:flutter/widgets.dart';

import 'application_basic_layout.dart';

abstract class AbstractApplicationPage extends StatelessWidget {
  Widget buildPortraitLayout();

  Widget buildLandscapeLayout();

  @override
  Widget build(BuildContext context) {
    return ApplicationBasicLayout(context).addApplicationLayoutToThePage(this);
  }
}
