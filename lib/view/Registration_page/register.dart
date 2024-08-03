
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../widgets/nav_bottom.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController dateController = TextEditingController();

  var formKey = GlobalKey<FormState>();



  DateTime selectedDate = DateTime.now();
  void _showDatePicker() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    ).then((value) {
      if(value != null) {
        dateController.text = DateFormat('dd-MM-yyyy').format(value);
        setState(() {

        });
      }
    },);
  }


  String groupValue = "Yes";
  String? dropValue;
  List genders = ["Male", "Female", "Other"];
  bool isTick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Registation Page",
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          //keyboardType: TextInputType.phone,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.white70,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey.shade900.withOpacity(0.4)),
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.blueGrey.shade900.withOpacity(0.4),
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w800,
                              fontSize: 14.sp,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.white70,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey.shade900.withOpacity(0.4)),
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.blueGrey.shade900.withOpacity(0.4),
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w800,
                              fontSize: 14.sp,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Phone No';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          // keyboardType: TextInputType.phone,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Colors.white70,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey.shade900.withOpacity(0.4)),
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.blueGrey.shade900.withOpacity(0.4),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w800,
                              fontSize: 14.sp,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email id';
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          // keyboardType: TextInputType.phone,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.location_city,
                              color: Colors.white70,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey.shade900.withOpacity(0.4)),
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.blueGrey.shade900.withOpacity(0.4),
                            hintText: "Address",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w800,
                              fontSize: 14.sp,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          // height: 55,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color:Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            controller: dateController,
                            autofocus: false,

                            readOnly: true,


                            style: TextStyle(color: Colors.white60, fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                              hintText: "Date of Birth",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w800,
                                fontSize: 14.sp,
                              ),
                            ),

                            onTap: () {
                              _showDatePicker();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your date of birth';
                              }
                              return null;
                            },

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          // height: 55,
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.female, color: Colors.white60),
                                const SizedBox(width: 10),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: dropValue,
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                    iconEnabledColor:Colors.white60,
                                    dropdownColor: Colors.black,
                                    hint: Text(
                                      "Select Gender",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    items: List.generate(
                                      genders.length,
                                          (index) => DropdownMenuItem(
                                        value: genders[index],
                                        child: Text(genders[index]),
                                      ),
                                    ),
                                    onChanged: (newValue) {
                                      setState(() {
                                        dropValue = newValue.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],

                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54,
                          minimumSize: const Size.fromHeight(45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate() && dropValue != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NavigationBottom()),
                            );
                          }else if(dropValue == null) {
                            Get.snackbar('Warning',
                                'Please select a your Gender',
                                colorText: Colors.white);
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.black, fontSize: 20.sp),
                        ),
                      ),

                    ],
                  ),
                )
            )
        )
    );
  }
}
