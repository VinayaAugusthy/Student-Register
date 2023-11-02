import 'package:flutter/material.dart';
import 'package:student_registration/utils/constants/colors.dart';
import 'package:student_registration/utils/constants/constants.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

late String chooseValue;
late String dropdownValue;
final yearController = TextEditingController();

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration',
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
          top: size.width * 0.1,
        ),
        child: Column(
          children: [
            dropDownField(academicYear, yearController),
          ],
        ),
      )),
    );
  }

  SizedBox dropDownField(
    List<String> optionsList,
    TextEditingController controller,
  ) {
    return SizedBox(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        value: optionsList.first,
        items: optionsList
            .map(
              (String value) => DropdownMenuItem(
                value: value,
                child: Text(value),
              ),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            dropdownValue = value!;
            chooseValue = value;
            controller.text = value;
          });
        },
      ),
    );
  }
}
