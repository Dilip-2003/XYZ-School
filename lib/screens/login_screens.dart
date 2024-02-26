import 'package:flutter/material.dart';
import 'package:xyz_school/screens/home_screens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isvisible = false;
  String? emailError;
  String? passwrordError;
  var emailTxt = '';
  var passTxt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Container(
            color: const Color.fromARGB(255, 58, 76, 194),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/student_img.jpg',height: 150,width: 150,),
                        const Padding(
                          padding: EdgeInsets.only(left: 100,top: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [ 
                              
                              Text('Hi ',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w200),),
                              Text('Student',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold), ),                        
                             
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text('Sign in to continue',style: TextStyle(fontSize: 18,color: Colors.white60),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(25),topRight: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [ 
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              emailError = null;
                            });
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),

                            ),
                            hintText: "Enter Your Email",
                            errorText: emailError,
                            // suffixText: 'enter'
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                           onChanged: (value){
                            setState(() {
                              passwrordError = null;
                            });
                          },
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),

                            ),
                            hintText: "Enter Your Password",
                            errorText: passwrordError,
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                isvisible = !isvisible;
                              });
                            }, icon: isvisible? const Icon(Icons.visibility_outlined):const Icon(Icons.visibility_off))
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !isvisible,
                          
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-40,
                        margin: const EdgeInsets.only(top: 40),
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement login functionality here
                              emailTxt = emailController.text;
                              passTxt = passwordController.text;

                              if(emailTxt.contains('@') && emailTxt.contains('.')){
                                if(passTxt.length>=8){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const MyHomePage();
                                },));
                                } else{
                                  setState(() {
                                  // emailError = 'enter valid email';
                                  passwrordError = 'Password Should be atleast 8 letters';
                                  return;
                                });
                                }
                              }else{
                                setState(() {
                                  emailError = 'Enter valid email';
                                  // passwrordError = 'enter valid credential';
                                  return;
                                });
                              }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 58, 76, 194)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          child: const SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 70),
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Icon(Icons.arrow_right_alt_outlined, color: Colors.white, size: 35),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),


    );
  }
}