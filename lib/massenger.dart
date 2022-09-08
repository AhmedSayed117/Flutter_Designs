import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Massenger extends StatelessWidget {
  //const Massenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Stack(
          alignment: Alignment.topRight,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50.0,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: const Text(
                " 2 ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ),
        ],
        titleSpacing: 20,
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.all(
                    5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/62659230?v=4'),
                            ),
                            Text(
                              "Ahmed Sayed Hassan",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/62659230?v=4'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 10),
                          child: Text(
                            'Ahmed Sayed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'How Are You?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 30,
                      ),
                      child: const Text(
                        "11:48 am",
                        style: TextStyle(color: Colors.white),
                      ),
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
