// ignore_for_file: deprecated_member_use
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/utils/spacing_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ChatsScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: SpacingUtils.space10),
              SvgPicture.asset(
                'assets/images/whatsapp_icon.svg',
                height: 80,
                width: 80,
              ),
              const Expanded(child: SpacingUtils.space10),
              const Text(
                'from',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: blackColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    color: primaryColor,
                    'assets/images/meta_icon.svg',
                    height: 30,
                    width: 30,
                  ),
                  SpacingUtils.wspace5,
                  const Text(
                    'Meta',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
