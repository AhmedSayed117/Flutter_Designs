import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String message;

 UserModel({
   required this.id,
   required this.name,
   required this.message,
});
}

class UserScreen extends StatelessWidget {
   UserScreen({Key? key}) : super(key: key);

  List<UserModel> users = [
   UserModel(id: 1, name: "Ahmed Sayed 1", message: "message") ,
   UserModel(id: 2, name: "Ahmed Sayed 2", message: "message") ,
   UserModel(id: 3, name: "Ahmed Sayed 3", message: "message") ,
   UserModel(id: 4, name: "Ahmed Sayed 4", message: "message") ,
   UserModel(id: 5, name: "Ahmed Sayed 5", message: "message") ,
   UserModel(id: 6, name: "Ahmed Sayed 6", message: "message") ,
   UserModel(id: 7, name: "Ahmed Sayed 7", message: "message") ,
   UserModel(id: 8, name: "Ahmed Sayed 8", message: "message") ,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'users',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => UserChat(users[index]),
                    separatorBuilder: (context, index)=> Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    itemCount: users.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget UserChat(UserModel user)=> Row(
    children: [
       CircleAvatar(
        radius: 25,
        child: Text(
          '${user.id}',
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              '${user.name}',
            ),
            Text(
              '${user.message}',
            ),
          ],
        ),
      ),
    ],
  );
}
