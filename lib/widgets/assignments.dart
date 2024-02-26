import 'package:flutter/material.dart';

class AssignmentsSections extends StatelessWidget {
  const AssignmentsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 58, 76, 194),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 58, 76, 194),
        title: const Center(child: Text('Assignments',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white,fontStyle: FontStyle.italic,letterSpacing: 1.0),)),
      ),

      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25)),
          color: Colors.white,
        ),

        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Assignments.length,
          itemBuilder: (context, index) {
            return Container(
             
              margin: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                  ),
                ]
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [ 
                    Row(
                      children: [ 
                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.lightBlue.shade200,
                    
                          ),
                          child: Center(child: Text(Assignments[index].subject)),
                      ),
                      ],
                    ),
                
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [ 
                          Text(Assignments[index].title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,),),
                        ],
                      ),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          const Text('Assign Date',style: TextStyle(fontSize: 16,color: Colors.grey),),
                          Text(Assignments[index].assignDate,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          const Text('Last Date',style: TextStyle(fontSize: 16,color: Colors.grey),),
                          Text(Assignments[index].lastDate,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          const Text('Status',style: TextStyle(fontSize: 16,color: Colors.grey),),
                          Text(Assignments[index].stutas,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Assignments[index].stutas == 'Pending'? InkWell(
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration( 
                            color: const Color.fromARGB(255, 55, 150, 227),
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(child: Text('${Assignments[index].btnStatus}',style: const TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),)),
                        ),

                        onTap: () {
                          
                        },
                      ): const SizedBox(
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
            );
        },),
      ),
    );
  }
}


class AssignmentData{
  final String subject;
  final String title;
  final String assignDate;
  final String lastDate;
  final String stutas;
  final String? btnStatus;

  AssignmentData({required this.subject, required this.title, required this.assignDate, required this.lastDate, required this.stutas, required this.btnStatus});

}

List <AssignmentData> Assignments =[
  AssignmentData(subject: 'Physics', title: 'Introduction to Physics', assignDate: '10/01/2023', lastDate: '17/01/2023', stutas: 'Pending', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Chemistry', title: 'Introduction to Chemistry', assignDate: '15/01/2023', lastDate: '22/01/2023', stutas: 'Submitted', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Biology', title: 'Introduction to Biology', assignDate: '20/01/2023', lastDate: '27/01/2023', stutas: 'Not Submitted', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Physics', title: 'Introduction to Physics', assignDate: '10/01/2023', lastDate: '17/01/2023', stutas: 'Pending', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Chemistry', title: 'Introduction to Chemistry', assignDate: '15/01/2023', lastDate: '22/01/2023', stutas: 'Submitted', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Biology', title: 'Introduction to Biology', assignDate: '20/01/2023', lastDate: '27/01/2023', stutas: 'Not Submitted', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Physics', title: 'Introduction to Physics', assignDate: '10/01/2023', lastDate: '17/01/2023', stutas: 'Pending', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Chemistry', title: 'Introduction to Chemistry', assignDate: '15/01/2023', lastDate: '22/01/2023', stutas: 'Submitted', btnStatus: 'To Be Submitted'),
  AssignmentData(subject: 'Biology', title: 'Introduction to Biology', assignDate: '20/01/2023', lastDate: '27/01/2023', stutas: 'Not Submitted', btnStatus: 'To Be Submitted'),
];