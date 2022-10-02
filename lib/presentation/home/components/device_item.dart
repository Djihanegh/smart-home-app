import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_style.dart';
import '../../../domain/entities/device.dart';
import 'power_button.dart';

class Deviceitem extends StatelessWidget {
  const Deviceitem({
    Key? key,
    required this.device,
  }) : super(key: key);
  final Device device;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border:
                Border.all(width: 1.5, color: Colors.black.withOpacity(0.4))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(device.image, height: 50, width: 50),
                const PowerButton(
                  isActive: true,
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                child: AutoSizeText(
                  device.name,
                  style: TextStyles.karla.copyWith(color: Colors.black),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: AutoSizeText(
                  device.subtitle,
                  style: TextStyles.karla.copyWith(color: Colors.black),
                ))
          ],
        ));
  }
}
