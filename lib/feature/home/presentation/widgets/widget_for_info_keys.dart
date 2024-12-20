import 'package:flutter/material.dart';

Widget sizedBox({required BuildContext context,required Widget? child}){
  return SizedBox(
    width: MediaQuery.sizeOf(context).width * .4,
    height: 55,
    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: child,
    ),
  );
}