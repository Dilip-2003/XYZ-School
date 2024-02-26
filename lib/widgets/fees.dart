import 'package:flutter/material.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      appBar: AppBar(
        title: const Center(child: Text("Fees",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color:Colors.white,fontStyle: FontStyle.italic,letterSpacing: 2),)),
        backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      ),
      body: Container(
        
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
          color: Colors.white
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          physics: const BouncingScrollPhysics(),
          itemCount: fee.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 25,left: 25,right: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                   BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2
                  )
                ],
              ),
             
              child: Column(
                children: [
                  Container(
                     padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [ 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            const Text('Receipt No'),
                            Text(fee[index].receiptNo)
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            const Text('Month'),
                            Text(fee[index].month)
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            const Text('Payment Date'),
                            Text(fee[index].payDate)
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            const Text('Status'),
                            Text(fee[index].status)
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                            const Text('Total Amount'),
                            Text(fee[index].totalAmount)
                          ],
                        ),
                        
                    
                      ],
                    ),
                  ),
      
                  InkWell(
                    onTap:() {
                      
                    },
                    child: Container(
                       
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                        color: Color.fromARGB(255, 58, 76, 194)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                          Text(fee[index].status == 'Paid'? fee[index].btnStatus:fee[index].btnStatus,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 18),),
                          fee[index].status=='Paid'?const Icon(Icons.download_rounded,size: 30,color: Colors.white,):const Icon(Icons.arrow_right_alt_outlined,size: 35,color: Colors.white,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
              
            );
          
        },),
      ),

    );
  }
}


class FeeData{
  final String receiptNo;
  final String month;
  final String payDate;
  final String status;
  final String totalAmount;
  final String btnStatus;

  FeeData({required this.receiptNo, required this.month, required this.payDate, required this.status, required this.totalAmount, required this.btnStatus});
}

List <FeeData> fee =[
  FeeData(receiptNo: '101010', month: 'Jan', payDate: '01/01/2023', status: 'Paid', totalAmount: '892\$', btnStatus: 'DOWNLOAD'),
  FeeData(receiptNo: '101011', month: 'Feb', payDate: '02/02/2023', status: 'Pending', totalAmount: '890\$', btnStatus: 'PAY NOW'),
  FeeData(receiptNo: '101012', month: 'March', payDate: '01/03/2023', status: 'Paid', totalAmount: '750\$', btnStatus: 'DOWNLOAD'),
  FeeData(receiptNo: '101013', month: 'April', payDate: '01/04/2023', status: 'Paid', totalAmount: '892\$', btnStatus: 'DOWNLOAD'),
  FeeData(receiptNo: '101014', month: 'May', payDate: '02/05/2023', status: 'Pending', totalAmount: '890\$', btnStatus: 'PAY NOW'),
  FeeData(receiptNo: '101015', month: 'June', payDate: '01/06/2023', status: 'Paid', totalAmount: '750\$', btnStatus: 'DOWNLOAD'),
  FeeData(receiptNo: '101016', month: 'July', payDate: '01/07/2023', status: 'Paid', totalAmount: '892\$', btnStatus: 'DOWNLOAD'),
  FeeData(receiptNo: '101017', month: 'August', payDate: '02/08/2023', status: 'Pending', totalAmount: '890\$', btnStatus: 'PAY NOW'),
  FeeData(receiptNo: '101018', month: 'September', payDate: '01/09/2023', status: 'Paid', totalAmount: '750\$', btnStatus: 'DOWNLOAD'),
];