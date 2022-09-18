import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/compunents/comonents.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool checkHach = true;
  var email = TextEditingController();
  var pass = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Free Design
        centerTitle: true,
        //Built in Design
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
          ),
          onPressed: () {
            if (kDebugMode) {
              print("hello");
            }
          },
        ),
        title: const Text(
          "Login",
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_important,
            ),
            onPressed: () {
              if (kDebugMode) {
                print("hello");
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DefaultInputField(
                      onPressed: (){},
                      type: TextInputType.emailAddress,
                      controller: email,
                      prefixIcon: Icons.email,
                      text: 'Enter Your Email',
                      validate:(String? value){
                          if(value!.isEmpty)return "Email cant be Empty !";
                          if(!value.contains('@') || !value.contains('.'))return "Email not valid !";
                          return null;
                      },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultInputField(
                    onPressed: (){
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    controller: pass,
                    prefixIcon: Icons.lock,
                    obscureText: obscureText,
                    text: 'Enter Your Password',
                    suffixIcon: obscureText?Icons.visibility_off:Icons.visibility,
                    type: TextInputType.visiblePassword,
                    validate: (String? value){
                      if(value!.isEmpty)return "Password cant be Empty !";
                      if(value.length<8)return "Password must at least 8 digits !";
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultMaterialButton(
                    ContainerColor: Colors.blue,
                    text: "Login",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        print(email.text);
                        print(pass.text);
                      }
                    }
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        child: const Text("Register Now"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
