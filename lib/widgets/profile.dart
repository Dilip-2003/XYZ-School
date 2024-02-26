import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  var regController = TextEditingController();
  var acaYearController = TextEditingController();
  var acaClassController = TextEditingController();
  var addNumController = TextEditingController();
  var dateOfAddmissionController = TextEditingController();
  var dobController = TextEditingController();
  var emailController = TextEditingController();
  var fatherNameController = TextEditingController();
  var motherNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  bool isregReadOnly = false;
  bool isAcaReadOnly = false;
  bool isadClassReadOnly =false;
  bool isadNoReadOnly = false;
  bool isdoaReadOnly = false;
  bool isdobReadOnly = false;
  bool isemailReadOnly = false;
  bool isfatherReadOnly = false;
  bool ismotherReadOnly = false;
  bool isPhoneReadOnly = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 187, 187),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 76, 194),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            const Padding(
              padding: EdgeInsets.only(left:60),
              child: Text('My Profile',style: TextStyle(fontSize: 25,color: Colors.white),),
            ), 
            TextButton.icon(onPressed: (){
            
            }, icon: const Icon(Icons.report_gmailerrorred,size: 15,color: Colors.grey,), label: const Text('Report',style: TextStyle(fontSize: 15,color: Colors.grey),)),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [ 
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.20,
             decoration: const BoxDecoration( 
              color: Color.fromARGB(255, 58, 76, 194),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
             ),
        
             child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ 
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/student_grey.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text('Dilip Sarkar',style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.w800,color:  Colors.white
                    ),),
                    Text('Class X-II A | Roll: 12',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight:FontWeight.w500),),
                  ],
                ),
              ],
             ),
            ),

            Container(
              height: MediaQuery.of(context).size.height*0.75,
              // color: Colors.amber,
              margin: EdgeInsets.all(15),

              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ 
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     Container(
                      margin:EdgeInsets.only(left:10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.43,
                       child: TextField(
                        maxLines: 1,
                        controller: regController,
                        readOnly: isregReadOnly,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text('Reg. Number',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isregReadOnly = !isregReadOnly;
                            });
                          }, icon: isregReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                     ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.43,
                       child: TextField(
                        controller: acaYearController,
                        readOnly: isAcaReadOnly,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text('Academic Year',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isAcaReadOnly = !isAcaReadOnly;
                            });
                          }, icon: isAcaReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                     ),
                      
                    ],
                  ),

                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.43,
                       child: TextField(
                        controller: acaClassController,
                        readOnly: isadClassReadOnly,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: Text('Admission Class',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isadClassReadOnly = !isadClassReadOnly;
                            });
                          }, icon: isadClassReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                     ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.43,
                       child: TextField(
                        controller: addNumController,
                        readOnly: isadNoReadOnly,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text('Admission No.',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isadNoReadOnly = !isadNoReadOnly;
                            });
                          }, icon: isadNoReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                     ),
                      
                    ],
                  ),

                  Container(
                            padding: EdgeInsets.all(10.0),
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.98,
                            child: TextField(
                              controller: dateOfAddmissionController,
                              readOnly: isdoaReadOnly,
                              decoration: InputDecoration(
                                labelText: 'Date of Admission',
                                labelStyle: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        if (!isdoaReadOnly) {
                                          final DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime.now(),
                                          );

                                          if (pickedDate != null && pickedDate != DateTime.now()) {
                                            String formattedDate = "${pickedDate.day} ${_getMonthName(pickedDate.month)} ${pickedDate.year}";
                                            setState(() {
                                              dateOfAddmissionController.text = formattedDate;
                                            });
                                          }
                                        }
                                      },
                                      icon: Icon(Icons.calendar_today),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isdoaReadOnly = !isdoaReadOnly;
                                        });
                                      },
                                      icon: isdoaReadOnly ? Icon(Icons.lock_outline_rounded) : Icon(Icons.lock_open_rounded),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  Container(
                            padding: EdgeInsets.all(10.0),
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.98,
                            child: TextField(
                              controller: dobController,
                              readOnly: isdobReadOnly,
                              decoration: InputDecoration(
                                labelText: 'Date of Birth',
                                labelStyle: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        if (!isdobReadOnly) {
                                          final DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime.now(),
                                          );

                                          if (pickedDate != null && pickedDate != DateTime.now()) {
                                            String formattedDate = "${pickedDate.day} ${_getMonthName(pickedDate.month)} ${pickedDate.year}";
                                            setState(() {
                                             dobController.text = formattedDate;
                                            });
                                          }
                                        }
                                      },
                                      icon: Icon(Icons.calendar_today),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isdobReadOnly = !isdobReadOnly;
                                        });
                                      },
                                      icon: isdobReadOnly ? Icon(Icons.lock_outline_rounded) : Icon(Icons.lock_open_rounded),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),


                Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.98,
                       child: TextField(
                        controller: emailController,
                        readOnly: isemailReadOnly,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Text('Your Email',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isemailReadOnly = !isemailReadOnly;
                            });
                          }, icon: isemailReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                ),

                Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.98,
                       child: TextField(
                        controller: fatherNameController,
                        readOnly: isfatherReadOnly,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: Text('Father Name',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isfatherReadOnly = !isfatherReadOnly;
                            });
                          }, icon: isfatherReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                ),
                Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.98,
                       child: TextField(
                        controller:motherNameController,
                        readOnly: ismotherReadOnly,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: Text('Mother Name',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              ismotherReadOnly = !ismotherReadOnly;
                            });
                          }, icon: ismotherReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                ),

                Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 75,
                      width:MediaQuery.of(context).size.width*0.98,
                       child: TextField(
                        controller: phoneNumberController,
                        readOnly: isPhoneReadOnly,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text('Phone Number',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isPhoneReadOnly = !isPhoneReadOnly;
                            });
                          }, icon: isPhoneReadOnly? Icon(Icons.lock_outline_rounded):Icon(Icons.lock_open_rounded)),
                        ),
                       ),
                ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


String _getMonthName(int month) {
  switch (month) {
    case 1:
      return 'Jan';
    case 2:
      return 'Feb';
    case 3:
      return 'Mar';
    case 4:
      return 'Apr';
    case 5:
      return 'May';
    case 6:
      return 'Jun';
    case 7:
      return 'Jul';
    case 8:
      return 'Aug';
    case 9:
      return 'Sep';
    case 10:
      return 'Oct';
    case 11:
      return 'Nov';
    case 12:
      return 'Dec';
    default:
      return '';
  }
}
