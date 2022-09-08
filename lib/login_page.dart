import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  bool checkHach = true;

  var email = TextEditingController();
  var pass = TextEditingController();

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
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Email: ',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: pass,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Password: ',
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      icon:Icon(
                        checkHach?Icons.remove_red_eye:Icons.rectangle,
                      ),
                      onPressed: () {
                        checkHach=!checkHach;
                      },
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print("email: " + email.text);
                      print("password: "+pass.text);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?"
                    ),
                    TextButton(
                      child: const Text(
                        "Register Now"
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}