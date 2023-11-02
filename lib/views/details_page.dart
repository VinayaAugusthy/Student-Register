import 'package:flutter/material.dart';
import 'package:student_registration/widgets/methods.dart';
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
final nameController = TextEditingController();
final emailController = TextEditingController();
final addressController = TextEditingController();
final classController = TextEditingController();

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
        child: ListView(
          children: [
            Text(
              'Acdemic Year',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            dropDownField(academicYear, yearController),
            getVerticalSpace(10),
            Text(
              'Student Name',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            callTextField(
              hintText: 'Orell Test',
              inputcontroller: nameController,
              max: 1,
            ),
            getVerticalSpace(10),
            Text(
              'Email',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            callTextField(
              hintText: 'Sarish@orell.in',
              inputcontroller: emailController,
              max: 1,
            ),
            getVerticalSpace(10),
            Text(
              'Address',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            Container(
              color: const Color.fromARGB(255, 165, 197, 251),
              child: callTextField(
                hintText: 'Enter Address',
                inputcontroller: addressController,
                max: 5,
              ),
            ),
            getVerticalSpace(10),
            Text(
              'Class/Semester',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            dropDownField(classList, classController),
            getVerticalSpace(10),
            Text(
              'Whatsapp Number',
              style: textStyle(
                FontWeight.bold,
                18,
                black,
              ),
            ),
            getVerticalSpace(10),
            Container(
              color: const Color.fromARGB(255, 165, 197, 251),
              child: callTextField(
                hintText: '1234567890',
                inputcontroller: addressController,
                max: 1,
              ),
            ),
            getVerticalSpace(10),
          ],
        ),
      )),
    );
  }

  SizedBox dropDownField(
      List<String> itemList, TextEditingController controller) {
    return SizedBox(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        value: itemList.first,
        items: itemList
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
