// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Free Design
        centerTitle: true,
        //Built in Design
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: onpressed,
        ),
        title: const Text(
          "Hello Home Page",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onpressed,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),

                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 200,
                      color: Colors.black.withOpacity(0.0),
                      padding: EdgeInsetsDirectional.only(
                        top: 10,
                        bottom: 10,
                        start: 10,
                        end: 10,
                      ),
                      child: Text(
                        "Tree",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onpressed() {
    print("Hello");
  }
}
