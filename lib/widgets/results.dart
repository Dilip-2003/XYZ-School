import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class ResultScreen extends StatelessWidget {
 const ResultScreen ({super.key});

//   
  @override
  Widget build(BuildContext context) {

    int obtainMarksSum = Results.fold(0, (prev, element) => prev + int.parse(element.obtainMarks));
    int obtainScores = obtainMarksSum;
    int totalMarksSum = Results.fold(0, (prev, element) => prev + int.parse(element.totalMarks));
    int totalScores = totalMarksSum;
    double averageSum = 0; 
    void calculateAverageSum() {
        averageSum = (obtainMarksSum / totalMarksSum) * 100;
      }
    calculateAverageSum(); 

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      appBar: AppBar( 
        title: const Center(child: Text("Results",style: TextStyle(fontSize: 25,letterSpacing: 0.5,color: Colors.white,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic),)),
        backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      ),

      body: Column(
        children: [ 
          Progressbar(obtainScores: obtainScores , totalScores: totalScores,percentScores: averageSum),
         const Padding(
           padding: EdgeInsets.only(bottom: 20),
           child: Column(
             children: [
               Text('You are Execllent',style: TextStyle(fontSize:16 ,color: Colors.white,fontWeight: FontWeight.w600 ),),
               Text('Dilip........',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600 ,letterSpacing: 0.5),),
             ],
           ),
         ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25)),
              color: Colors.white,
              ),
                  
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: Results.length,
              itemBuilder: (context, index) {
                var fullWidth = double.parse(Results[index].totalMarks);
                var obtainWidth = double.parse(Results[index].obtainMarks);
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)   
                      ),
                      child: Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            Text(Results[index].subject,style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400 ),),
                            Column(
                              children: [ 
                                Text('${Results[index].obtainMarks}/ ${Results[index].totalMarks}',style: const TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600 ),),
                                Stack(
                                  children: [
                                    Container(
                                        width: fullWidth, 
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.elliptical(40, 30),
                                            topLeft: Radius.elliptical(40, 30)),
                                          color: Colors.white,
                                        ),
                                    
                                  ),
                                  Positioned(
                      
                                    child:Container(
                                      height: 20,
                                      width: obtainWidth,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.elliptical(40, 30),
                                            topLeft: Radius.elliptical(40, 30)),
                                            color: obtainWidth<=50?  Colors.red:((obtainWidth>50 && obtainWidth<80)?Colors.grey:Colors.green),
                                      ),
                                    ) 
                                  
                                  ),
                      
                                ],
                                ),
                                Text(Results[index].grade,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
                              ],
                            )
                          ],
                            ),
                    ),
                  ],
                );
                  
            },),
                  ),
          ),
      
      
      
      
        ],
      ),
    );
  }
}

class Progressbar extends StatefulWidget {
  const Progressbar({Key? key, required this.obtainScores, required this.totalScores,required this.percentScores})
      : super(key: key);
  final int obtainScores;
  final int totalScores;
  final double percentScores;
  @override
  State<Progressbar> createState() => _ProgressbarState();
}

class _ProgressbarState extends State<Progressbar> {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.25,
        child: CircularPercentIndicator(
              radius: 75,
              percent: widget.percentScores / 100,
              backgroundColor: Colors.white,
              progressColor: const Color.fromARGB(255, 178, 172, 172),
              animation: true,
              animationDuration: 2000,
              lineWidth: 15.0,
              circularStrokeCap: CircularStrokeCap.round,
              center: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Column(
                  children: [ 
                    Text(
                  '${widget.percentScores.toStringAsFixed(0)}%',
                  style: const TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w800),
                ),
                Text('${widget.obtainScores.toInt()} /${widget.totalScores.toInt()}',style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade400,fontWeight: FontWeight.w500),),
                  ],
                ),
              )
        ),
      ),
    );
  }
}

class ResultData {
  final String subject;
  final String obtainMarks;
  final String totalMarks;
  final String grade;

  ResultData({
    required this.subject, 
    required this.obtainMarks,
    required this.totalMarks, 
    required this.grade});
}


List <ResultData> Results = [
  ResultData(subject: 'Physics', obtainMarks: '90', totalMarks: '100', grade: 'AA'),
  ResultData(subject: 'Chemistry', obtainMarks: '86', totalMarks: '100', grade: 'A+'),
  ResultData(subject: 'Math', obtainMarks: '69', totalMarks: '100', grade: 'B'),
  ResultData(subject: 'Biology', obtainMarks: '75', totalMarks: '100', grade: 'A'),
  ResultData(subject: 'Data Structures and \n Algorithm', obtainMarks: '89', totalMarks: '100', grade: 'A+'),
  ResultData(subject: 'C Programing', obtainMarks: '89', totalMarks: '100', grade: 'A+'),
  ResultData(subject: 'Digital Electronics', obtainMarks: '79', totalMarks: '100', grade: 'A'),
  ResultData(subject: 'Humanities', obtainMarks: '49', totalMarks: '100', grade: 'D'),
];