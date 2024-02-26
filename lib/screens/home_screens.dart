import 'package:flutter/material.dart';
import 'package:xyz_school/widgets/assignments.dart';
import 'package:xyz_school/widgets/fees.dart';
import 'package:xyz_school/widgets/profile.dart';
import 'package:xyz_school/widgets/results.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreensData();
  }
}

class HomeScreensData extends StatefulWidget {
  const HomeScreensData({super.key});

  @override
  State<HomeScreensData> createState() => _HomeScreensDataState();
}

class _HomeScreensDataState extends State<HomeScreensData> {
  // var width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: const Color.fromARGB(255, 58, 76, 194),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
             const Text('DashBoard',style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.w900),),
              InkWell(
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/student_grey.jpg'),
                     
                          ),
                                              
                          onTap: () {
                            
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile(),));
                          },
                        ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      body: Column(
        children: [ 
            SizedBox(
              height: MediaQuery.of(context).size.height*0.28,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      Column(
                        children: [ 
                          const Row(
                            children: [ 
                              Text('Hi,',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text(' Dilip Sarkar',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic),),
                            ],
                          ),
                          Text('Class X-II A | Roll no: 12',style:TextStyle( fontSize:16,color: Colors.white,fontWeight: FontWeight.w500)),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Center(child: Text('2023-2024',style: TextStyle(fontSize:20,color: Color.fromARGB(255, 98, 74, 3) ),)),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [ 
                              Text('Attendance',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                              Text('98.32%',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                        ),
              
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [ 
                              Text('Fees Due',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                              Text('600\$',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
      
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width*1.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
              
                child: Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.quiz_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Take Quiz',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                           InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.assignment_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Assignments',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => AssignmentsSections(),));
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.holiday_village_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Holidays',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                           InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.calendar_month_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Time Table',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                          ],
                        ),
                                
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.poll_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Result',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));
                              },
                            ),
                           InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.currency_rupee,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Fees',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FeesScreen(),));
                              },
                            ),
                           
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.poll_outlined,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('Result',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                           InkWell(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                height: 110,
                                width: 150,
                                 decoration: BoxDecoration( 
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ 
                                    Icon(Icons.dataset_rounded,size: 40,color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text('DataSheet',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                           
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ),
      
      
        ],
      ),
    );
  }
}