import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/screens/transition_appbar.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            floating: true,
            pinned: false,
            expandedHeight: 400,
            collapsedHeight: 200,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.back),
              color: Colors.white,
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.white,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Image.asset(
                'assets/nehal.jpeg',
                fit: BoxFit.fitWidth,
              ).pOnly(top: 10),
            ),
          ),
          // TransitionAppBar(
          //   avatar: Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage(
          //           'assets/nehal.jpeg',
          //         ),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          //   title: Text(
          //     'Nehal Jaisalmeria',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 2000.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildProfileSection();
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }

  _buildProfileSection() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/nehal.jpeg'),
          radius: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nehal Jaisalmeria',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'last seen at 11:11 AM',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ).px16()
      ],
    );
  }

  _buildInfoSection() {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Info',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),
          ),
        ],
      ).p20(),
    );
  }
}
// Container(
//               color: Colors.blueGrey,
//               child: Container(
//                 child: Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildProfileSection(),
//                       _buildInfoSection(),
//                     ],
//                   ),
//                 ),
//               ).px20(),
//             ),