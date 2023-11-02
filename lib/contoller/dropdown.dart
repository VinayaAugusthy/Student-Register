//  import 'package:flutter/material.dart';

// SizedBox dropDownField(
//     List<String> optionsList,
//     TextEditingController controller,
//   ) {
//     return SizedBox(
//       child: DropdownButtonFormField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//         value: optionsList.first,
//         items: optionsList
//             .map(
//               (String value) => DropdownMenuItem(
//                 value: value,
//                 child: Text(value),
//               ),
//             )
//             .toList(),
//         onChanged: (value) {
//           setState(() {
//             dropdownValue = value!;
//             chooseValue = value;
//             controller.text = value;
//           });
//         },
//       ),
//     );
//   }