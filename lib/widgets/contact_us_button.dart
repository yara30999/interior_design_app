import 'package:flutter/material.dart';
import '../utils/color_manager.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.black,
          foregroundColor: ColorManager.white,
        ),
        onPressed: () {},
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 180,
              height: 20,
              margin: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                  color: ColorManager.lightRed,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Text(
                'CONTACT US',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ))
        ]),
      ),
    );
  }
}
