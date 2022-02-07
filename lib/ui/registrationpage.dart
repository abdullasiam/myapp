import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/const/appcolor.dart';
import 'package:myapp/const/custombutton.dart';
import 'package:myapp/ui/loginpage.dart';
import 'package:myapp/ui/userform.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
class pagewidget extends StatelessWidget {
  const pagewidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registration(),
    );
  }
}
class Registration extends StatefulWidget {
  const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
final _formkeys = GlobalKey<FormState>();
final passwordValidator = MultiValidator([  
    RequiredValidator(errorText: 'password is required'),  
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),  
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')  
 ]);

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
   bool _obscureText = true;
  signup () async{
    try {
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _emailcontroller.text,
    password: _passwordController.text,
  );
  var authCredential = userCredential.user;
  print(authCredential!.uid);
  if (authCredential.uid.isNotEmpty){
    Navigator.push(context,
   MaterialPageRoute(builder: (_)=>Userwidget()));
  }
  else{
    Fluttertoast.showToast(msg: "Something went Wrong.");
  }
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    // print('The password provided is too weak.');
    Fluttertoast.showToast(msg: "The password provided is too weak.");
  } else if (e.code == 'email-already-in-use') {
    // print('The account already exists for that email.');
    Fluttertoast.showToast(msg: "The account already exists for that email.");
  }
} catch (e) {
  print(e);
}
  }
  Widget build(BuildContext context) {
    String password;
    return Scaffold(
      
      backgroundColor: appcolor.mycolor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150.h,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Sign uo",
                      style: TextStyle(fontSize: 22.sp,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.r),
                    topRight: Radius.circular(28.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: _formkeys,
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(" Well Come To Sign Up",
                        style: TextStyle(
                          fontSize: 22.sp,color: appcolor.mycolor
                        ),
                        ),
                        Text("Glad to see you",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFFBBBBBB),
                        ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.h,
                              decoration: BoxDecoration(
                                color: appcolor.mycolor,
                                borderRadius: BorderRadius.circular(12.r)
                              ),
                              child: Center(
                                child: Icon(Icons.email_outlined,
                                color: Colors.white,
                                size: 20.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Expanded(child: TextFormField(
                              validator: EmailValidator(
                                errorText: "Enter a Valid Email"
                                 ),
                              controller: _emailcontroller,
                              decoration: InputDecoration(
                                hintText: "Enter your Email Address",
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xFF414041),
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color: appcolor.mycolor
                                ),
                              ),
                            ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.h,
                              decoration: BoxDecoration(
                                color: appcolor.mycolor,
                                borderRadius: BorderRadius.circular(12.r)
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.lock_outlined,
                                color: Colors.white,
                                size: 15.w,
                                ),
                                ),
                             ),
                             SizedBox(
                               width: 10.w,
                             ),
                             Expanded(child: TextFormField(
                               validator: passwordValidator,
                               onChanged: (val) => password = val,
                               controller: _passwordController,
                               obscureText: _obscureText,
                            decoration: InputDecoration(
                              hintText: "Password must be 8 character",
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xFF414041),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 15.sp,
                                color: appcolor.mycolor,
                              ),
                              suffixIcon: _obscureText == true
                              ? IconButton(
                                onPressed:() {
                                  setState(() {
                                    _obscureText = false;
                                  });
                                }, icon: Icon(
                                  Icons.remove_red_eye,
                                  size: 20.w,
                                ))
                                :IconButton(
                                onPressed:() {
                                  setState(() {
                                    _obscureText = true;
                                  });
                                }, icon: Icon(
                                  Icons.visibility_off,
                                  size: 20.w,
                                )
                                ,)
                            ),
                          ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 1.sw,
                      //   height: 56.w,
                      //   child: ElevatedButton(onPressed: (){
                      //     if (_formkeys.currentState!.validate()){
                      //       return signup();
                      //     }
                      //   },
                      //    child: Text("Sing Up",style: TextStyle(
                      //      color: Colors.white,
                      //      fontSize: 18.w
                      //    ),
                      //    ),
                      //    style: ElevatedButton.styleFrom(
                      //      primary: appcolor.mycolor,elevation: 3),
                         
                      //    ),
                      // ),
                      CustomButton("Sign Up", (){
                        if(_formkeys.currentState!.validate()){
                          return signup();
                        }
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      Wrap(
                        children: [
                          Text("Alredy You Have An Account",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFBBBBBB),
                          ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            child: Text("Sing up",style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              color: appcolor.mycolor,
                            ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Loginwidget()));
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
              ),
            ],
        ),
        ),
    );
  }
}