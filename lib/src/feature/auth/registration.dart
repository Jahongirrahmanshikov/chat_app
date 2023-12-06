import 'package:chat_app/src/feature/auth/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../common/utils/custom_button.dart';
import 'widgets/register_number_widget.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late final PageController _pageController;
  ValueNotifier<int> pageNumber = ValueNotifier(0);
  List<String> texts = ["Start Messaging", "Continue", "Resend Code", "Save"];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ValueListenableBuilder(
          valueListenable: pageNumber,
          builder: (BuildContext context, value, Widget? child) =>
              pageNumber.value == 0 ? SizedBox() : BackButton(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                SplashScreenWidget(),
                RegisterNumberWidget(),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: pageNumber,
            builder: (BuildContext context, value, Widget? child) =>
                CustomButton(
              onPressed: () {
                pageNumber.value = 1;
                _pageController.jumpToPage(pageNumber.value);
              },
              text: texts[value],
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
