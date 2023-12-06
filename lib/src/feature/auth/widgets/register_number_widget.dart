import 'package:chat_app/src/common/styles/app_colors.dart';
import 'package:chat_app/src/common/utils/custom_extension.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterNumberWidget extends StatefulWidget {
  const RegisterNumberWidget({super.key});

  @override
  State<RegisterNumberWidget> createState() => _RegisterNumberWidgetState();
}

class _RegisterNumberWidgetState extends State<RegisterNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Enter Your Phone Number",
          style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.black700,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 295,
          child: Text(
            "Please confirm your country code and enter your phone number",
            style: context.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.white100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image(
                        fit: BoxFit.cover,
                        width: 44,
                        height: 44,
                        image: AssetImage("asset/images/Flag.png"),
                      ),
                      Text(
                        "+998",
                        style: context.textTheme.titleSmall?.copyWith(
                          color: AppColors.white300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 220,
                height: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.white100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '(##) ###-##-##',
                            filter: {"#": RegExp(r'[0-9]')},
                            type: MaskAutoCompletionType.eager),
                      ],
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: context.textTheme.titleSmall?.copyWith(
                          color: AppColors.white300,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
