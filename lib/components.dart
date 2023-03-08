import 'package:flutter/material.dart';
// int team = 0;
// int counter = 0;
// int counter2=0 ;
// Widget buildColumn({
//   required String teamName,
// }) {
//   return Column(
//     children: [
//       Text(
//         teamName,
//         style: const TextStyle(fontSize: 40),
//       ),
//       Text(
//         '$counter',
//         style: const TextStyle(fontSize: 150),
//       ),
//     ],
//   );
// }

Widget buildTextElevatedButton({
  required Function() onPressedFunction,
  required String titleOfButton,
}) {
  return Container(
      decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
    child: ElevatedButton(
      onPressed: onPressedFunction,
      style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all( Colors.cyan),
        minimumSize: MaterialStateProperty.all(const Size(120, 35)),
        shape: MaterialStateProperty.all( RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(60.0),))
      ),
      child: Text(titleOfButton,
          style: const TextStyle(
            // color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
    ),
  );
}
