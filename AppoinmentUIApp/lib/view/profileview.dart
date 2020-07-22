import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          buildCircleProfileImage(),
        ],
      ),
    );
  }

  Card buildCircleProfileImage() {
    return Card(
      elevation: 14.0,
      shape: CircleBorder(
          side: BorderSide(width: pageWidth * 0.01, color: Color(0xffe3dcd7))),
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Color(0xffe3dcd7),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('lib/assets/ebubekir.jpg'),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
